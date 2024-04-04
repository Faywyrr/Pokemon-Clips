(deffunction ask-question (?question)
  (printout t ?question)
  (bind ?response (read))
  (return ?response)
)

(deffunction clear-console ()
  (loop-for-count (?i 1000)
    (printout t crlf)
  )
)

(deffunction print-welcome-message ()
  (printout t "Bienvenue dans le Pokedex !" crlf)
  (printout t "Pense à un pokémon de première génération et je vais deviner lequel c'est !" crlf)
  (printout t "Réponds par o pour oui et n pour non." crlf)
  (printout t "C'est parti !" crlf)
)

(deffunction restart ()
  (reset)
  (assert (default))
  (run)
)

(deffunction start ()
  (print-welcome-message)
  (restart)
)

(deffunction end ()
  (bind ?response (ask-question "Voulez-vous rejouer ? (o/n) "))
  (if (eq ?response o)
    then
      (clear-console)
      (restart)
    else
      (exit)
  )
)

