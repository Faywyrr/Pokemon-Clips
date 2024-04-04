from data import load_data
from constants import CLIPS_FOLDER
import os

# Chargement des données
header, training_data = load_data()

# Fonctions pour construire l'arbre de décision
def class_counts(rows):
    counts = {}
    for row in rows:
        label = row[-1]
        if label not in counts:
            counts[label] = 0
        counts[label] += 1
    return counts

class Question:
    def __init__(self, column, value):
        self.column = column
        self.value = value

    def match(self, example):
        val = example[self.column]
        return val == self.value

    def __repr__(self):
        if self.value:
            value = "Oui"
        else:
            value = "Non"
        return "%s %s %s ?" % (
            header[self.column], "==", value)

def partition(rows, question):
    true_rows, false_rows = [], []
    for row in rows:
        if question.match(row):
            true_rows.append(row)
        else:
            false_rows.append(row)
    return true_rows, false_rows

def gini(rows):
    counts = class_counts(rows)
    impurity = 1
    for lbl in counts:
        prob_of_lbl = counts[lbl] / float(len(rows))
        impurity -= prob_of_lbl**2
    return impurity

def info_gain(left, right, current_uncertainty):
    p = float(len(left)) / (len(left) + len(right))
    return current_uncertainty - p * gini(left) - (1 - p) * gini(right)

def find_best_split(rows):
    best_gain = 0
    best_question = None
    current_uncertainty = gini(rows)
    n_features = len(rows[0]) - 1

    for col in range(n_features):

        values = set([row[col] for row in rows])

        for val in values:
            question = Question(col, val)

            true_rows, false_rows = partition(rows, question)

            if len(true_rows) == 0 or len(false_rows) == 0:
                continue

            gain = info_gain(true_rows, false_rows, current_uncertainty)

            if gain >= best_gain:
                best_gain, best_question = gain, question

    return best_gain, best_question

class Leaf:
    def __init__(self, rows):
        self.predictions = class_counts(rows)

class Decision_Node:
    def __init__(self,
                 question,
                 true_branch,
                 false_branch):
        self.question = question
        self.true_branch = true_branch
        self.false_branch = false_branch

# Construction de l'arbre de décision
def build_tree(rows):
    gain, question = find_best_split(rows)

    if gain == 0:
        return Leaf(rows)

    true_rows, false_rows = partition(rows, question)

    true_branch = build_tree(true_rows)
    false_branch = build_tree(false_rows)

    return Decision_Node(question, true_branch, false_branch)

# Affichage de l'arbre de décision
def print_tree(node, spacing=""):
    if isinstance(node, Leaf):
        if len(node.predictions) == 1:
            print(spacing + "Ton pokémon est", list(node.predictions.keys())[0])
            return
        print (spacing + "Prediction :", node.predictions)
        return

    print (spacing + str(node.question))

    print (spacing + '--> Vrai:')
    print_tree(node.true_branch, spacing + "  ")

    print (spacing + '--> Faux:')
    print_tree(node.false_branch, spacing + "  ")

def format_pokemon_name(pokemon):
    return pokemon.lower().replace(" ", "_").replace(".", "")

# Génération du fichier functions.clp
def generate_clips_functions(f):
    f.write("(deffunction ask-question (?question)\n")
    f.write("  (printout t ?question)\n")
    f.write("  (bind ?response (read))\n")
    f.write("  (return ?response)\n")
    f.write(")\n\n")

    f.write("(deffunction clear-console ()\n")
    f.write("  (loop-for-count (?i 1000)\n")
    f.write("    (printout t crlf)\n")
    f.write("  )\n")
    f.write(")\n\n")

    f.write("(deffunction print-welcome-message ()\n")
    f.write("  (printout t \"Bienvenue dans le Pokedex !\" crlf)\n")
    f.write("  (printout t \"Pense à un pokémon de première génération et je vais deviner lequel c'est !\" crlf)\n")
    f.write("  (printout t \"Réponds par o pour oui et n pour non.\" crlf)\n")
    f.write("  (printout t \"C'est parti !\" crlf)\n")
    f.write(")\n\n")

    f.write("(deffunction restart ()\n")
    f.write("  (reset)\n")
    f.write("  (assert (default))\n")
    f.write("  (run)\n")
    f.write(")\n\n")

    f.write("(deffunction start ()\n")
    f.write("  (print-welcome-message)\n")
    f.write("  (restart)\n")
    f.write(")\n\n")

    f.write("(deffunction end ()\n")
    f.write("  (bind ?response (ask-question \"Voulez-vous rejouer ? (o/n) \"))\n")
    f.write("  (if (eq ?response o)\n")
    f.write("    then\n")
    f.write("      (clear-console)\n")
    f.write("      (restart)\n")
    f.write("    else\n")
    f.write("      (exit)\n")
    f.write("  )\n")
    f.write(")\n\n")

# Génération du fichier rules.clp
def generate_clips_rules(f, node, conditions=None):
    if conditions is None:
        conditions = []

    if isinstance(node, Leaf):
        pokemon = list(node.predictions.keys())[0]
        pokemon_format = format_pokemon_name(pokemon)
        rule = "(defrule is-pokemon-{}\n".format(pokemon_format)
        for condition in conditions:
            rule += "  " + condition + "\n"
        rule += "=>\n"
        rule += '  (printout t "Ton pokémon est {}" crlf)\n'.format(pokemon)
        rule += '  (end)\n'
        rule += ")\n\n"
        f.write(rule)
        return

    true_conditions = conditions.copy()
    false_conditions = conditions.copy()

    question = str(node.question.column)
    value  = node.question.value
    condition = "(question_{})".format(question)
    not_condition = "(not-question_{})".format(question)

    if value:
        true_conditions.append(condition)
        false_conditions.append(not_condition)
    else:
        true_conditions.append(not_condition)
        false_conditions.append(condition)

    generate_clips_rules(f, node.true_branch, true_conditions)
    generate_clips_rules(f, node.false_branch, false_conditions)

# Ancienne version de la fonction generate_clips_ask_questions qui utilisait des if imbriqués
# La nouvelle version utilise des règles CLIPS et le moteur d'inférence pour poser les questions
"""def generate_clips_ask_questions(f, node, start=True, spacing="    "):
    if start:
        f.write("(deffunction ask-question (?question)\n")
        f.write("  (printout t ?question)\n")
        f.write("  (bind ?response (read))\n")
        f.write("  (return ?response)\n")
        f.write(")\n\n")

        f.write("(deffunction ask-questions ()\n")
        generate_clips_ask_questions(f, node, False, spacing)
        f.write(")\n\n")
        return
        
    if isinstance(node, Leaf):
        return
    
    question = str(node.question.column)
    question_text = header[node.question.column] + " (o/n) "
    condition = "(question_{})".format(question)
    not_condition = "(not-question_{})".format(question)

    f.write(spacing + "(bind ?response (ask-question \"{}\"))\n".format(question_text))
    f.write(spacing + "(if (eq ?response o)\n")
    f.write(spacing + "  then\n")
    f.write(spacing + "    (assert {})\n".format(condition))
    f.write(spacing + "    (run)\n")
    if node.question.value:
        generate_clips_ask_questions(f, node.true_branch, False, spacing + "    ")
    else:
        generate_clips_ask_questions(f, node.false_branch, False, spacing + "    ")
    f.write(spacing + "  else\n")
    f.write(spacing + "    (assert {})\n".format(not_condition))
    f.write(spacing + "    (run)\n")
    if node.question.value:
        generate_clips_ask_questions(f, node.false_branch, False, spacing + "    ")
    else:
        generate_clips_ask_questions(f, node.true_branch, False, spacing + "    ")
    f.write(spacing + ")\n")"""

# Nouvelle version de la fonction generate_clips_ask_questions qui utilise des règles CLIPS
i = 0
questions_history = []
def generate_clips_ask_questions(f, node, start=True, questions=None):
    global i, questions_history

    if questions is None:
        questions = []

    if isinstance(node, Leaf):
        conditions = []

        for q in questions:
            question = q["question"]
            condition = q["condition"]
            question_text = q["text"]

            question_hash = hash(question + conditions.__str__())

            if question_hash in questions_history:
                conditions.append(condition)
                continue

            f.write("(defrule ask-question_{}\n".format(question + "_" + str(i)))

            if len(conditions) == 0:
                f.write("  (default)\n")
            else:
                for c in conditions:
                    f.write("  {}\n".format(c))

            f.write("=>\n")
            f.write("  (bind ?response (ask-question \"{}\"))\n".format(question_text))
            f.write("  (if (eq ?response o)\n")
            f.write("    then\n")
            f.write("      (assert (question_{}))\n".format(question))
            f.write("    else\n")
            f.write("      (assert (not-question_{}))\n".format(question))
            f.write("  )\n")
            f.write(")\n\n")

            conditions.append(condition)
            questions_history.append(question_hash)
            i += 1

        questions = []
        return
    
    question = str(node.question.column)
    question_text = header[node.question.column] + " (o/n) "

    condition = "(question_{})".format(question)
    not_condition = "(not-question_{})".format(question)

    true_questions = questions.copy()
    false_questions = questions.copy()

    if  node.question.value:
        true_questions.append({
            "question": question,
            "text": question_text,
            "condition": condition
        })
        false_questions.append({
            "question": question,
            "text": question_text,
            "condition": not_condition
        })
    else:
        true_questions.append({
            "question": question,
            "text": question_text,
            "condition": not_condition
        })
        false_questions.append({
            "question": question,
            "text": question_text,
            "condition": condition
        })

    generate_clips_ask_questions(f, node.true_branch, False, true_questions)
    generate_clips_ask_questions(f, node.false_branch, False, false_questions)

def generate_clips_main(f):
    f.write("(batch* functions.clp)\n")
    f.write("(batch* questions.clp)\n")
    f.write("(batch* rules.clp)\n")
    f.write("(start)\n")

# Fonction pour générer les fichiers CLIPS
def to_clips(node):
    if not os.path.exists(CLIPS_FOLDER):
        os.makedirs(CLIPS_FOLDER)

    with open(os.path.join(CLIPS_FOLDER, "functions.clp"), "w", encoding="utf-8") as f:
        generate_clips_functions(f)

    with open(os.path.join(CLIPS_FOLDER, "rules.clp"), "w", encoding="utf-8") as f:
       generate_clips_rules(f, node)

    with open(os.path.join(CLIPS_FOLDER, "questions.clp"), "w", encoding="utf-8") as f:
        generate_clips_ask_questions(f, node)

    with open(os.path.join(CLIPS_FOLDER, "main.clp"), "w", encoding="utf-8") as f:
        generate_clips_main(f)

if __name__ == '__main__':
    print("Construction de l'arbre de décision...")
    my_tree = build_tree(training_data)
    print_tree(my_tree)
    to_clips(my_tree)
    print("Fichiers CLIPS générés avec succès !")