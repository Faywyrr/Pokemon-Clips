from constants import DATA_FILE
import csv

# Chargement des données du fichier CSV
def load_data():
    questions = []
    characters = []

    with open(DATA_FILE, "r", encoding="utf-8") as f:
        reader = csv.reader(f, delimiter=";")
        for i, row in enumerate(reader):
            if i == 0:
                questions = row[:-1]
            else:
                characters.append([bool(int(x)) for x in row[:-1]] + [row[-1]])

    return questions, characters