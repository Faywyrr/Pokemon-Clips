(deffunction ask-question (?question)
  (printout t ?question)
  (bind ?response (read))
  (return ?response)
)

(deffunction ask-questions ()
    (bind ?response (ask-question "Ton pokémon est-il de type poison ? (o/n) "))
    (if (eq ?response o)
      then
        (assert (question_29))
        (run)
        (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
        (if (eq ?response o)
          then
            (assert (question_66))
            (run)
            (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
            (if (eq ?response o)
              then
                (assert (question_59))
                (run)
                (bind ?response (ask-question "Ton pokémon peut-il voler ou léviter ? (o/n) "))
                (if (eq ?response o)
                  then
                    (assert (question_17))
                    (run)
                  else
                    (assert (not-question_17))
                    (run)
                )
              else
                (assert (not-question_59))
                (run)
                (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans des grottes ? (o/n) "))
                (if (eq ?response o)
                  then
                    (assert (question_58))
                    (run)
                    (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_67))
                        (run)
                      else
                        (assert (not-question_67))
                        (run)
                    )
                  else
                    (assert (not-question_58))
                    (run)
                    (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_67))
                        (run)
                        (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_50))
                            (run)
                          else
                            (assert (not-question_50))
                            (run)
                            (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_64))
                                (run)
                                (bind ?response (ask-question "Ton pokémon est-il bleu ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_46))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon est-il de type herbe ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_24))
                                        (run)
                                      else
                                        (assert (not-question_24))
                                        (run)
                                    )
                                  else
                                    (assert (not-question_46))
                                    (run)
                                )
                              else
                                (assert (not-question_64))
                                (run)
                                (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_49))
                                    (run)
                                  else
                                    (assert (not-question_49))
                                    (run)
                                )
                            )
                        )
                      else
                        (assert (not-question_67))
                        (run)
                        (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_64))
                            (run)
                            (bind ?response (ask-question "Ton pokémon est-il de type sol ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_31))
                                (run)
                                (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_50))
                                    (run)
                                  else
                                    (assert (not-question_50))
                                    (run)
                                )
                              else
                                (assert (not-question_31))
                                (run)
                                (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_63))
                                    (run)
                                  else
                                    (assert (not-question_63))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon est-il rouge ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_45))
                                        (run)
                                      else
                                        (assert (not-question_45))
                                        (run)
                                    )
                                )
                            )
                          else
                            (assert (not-question_64))
                            (run)
                            (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_65))
                                (run)
                                (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_56))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_50))
                                        (run)
                                      else
                                        (assert (not-question_50))
                                        (run)
                                    )
                                  else
                                    (assert (not-question_56))
                                    (run)
                                )
                              else
                                (assert (not-question_65))
                                (run)
                            )
                        )
                    )
                )
            )
          else
            (assert (not-question_66))
            (run)
            (bind ?response (ask-question "Ton pokémon posséde t-il uniquement 4 pattes ? (o/n) "))
            (if (eq ?response o)
              then
                (assert (question_62))
                (run)
                (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
                (if (eq ?response o)
                  then
                    (assert (question_56))
                    (run)
                  else
                    (assert (not-question_56))
                    (run)
                    (bind ?response (ask-question "Ton pokémon est-il vert ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_44))
                        (run)
                      else
                        (assert (not-question_44))
                        (run)
                    )
                )
              else
                (assert (not-question_62))
                (run)
                (bind ?response (ask-question "Ton pokémon est-il grand (+ de 1m) ? (o/n) "))
                (if (eq ?response o)
                  then
                    (assert (question_41))
                    (run)
                    (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_59))
                        (run)
                        (bind ?response (ask-question "Ton pokémon peut-il voler ou léviter ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_17))
                            (run)
                          else
                            (assert (not-question_17))
                            (run)
                        )
                      else
                        (assert (not-question_59))
                        (run)
                    )
                  else
                    (assert (not-question_41))
                    (run)
                    (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_64))
                        (run)
                        (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_56))
                            (run)
                          else
                            (assert (not-question_56))
                            (run)
                        )
                      else
                        (assert (not-question_64))
                        (run)
                        (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_65))
                            (run)
                            (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_56))
                                (run)
                              else
                                (assert (not-question_56))
                                (run)
                            )
                          else
                            (assert (not-question_65))
                            (run)
                        )
                    )
                )
            )
        )
      else
        (assert (not-question_29))
        (run)
        (bind ?response (ask-question "Ton pokémon a-t-il une carapace ? (o/n) "))
        (if (eq ?response o)
          then
            (assert (question_20))
            (run)
            (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
            (if (eq ?response o)
              then
                (assert (question_66))
                (run)
                (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
                (if (eq ?response o)
                  then
                    (assert (question_65))
                    (run)
                  else
                    (assert (not-question_65))
                    (run)
                    (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_50))
                        (run)
                      else
                        (assert (not-question_50))
                        (run)
                    )
                )
              else
                (assert (not-question_66))
                (run)
                (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                (if (eq ?response o)
                  then
                    (assert (question_67))
                    (run)
                    (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_65))
                        (run)
                      else
                        (assert (not-question_65))
                        (run)
                    )
                  else
                    (assert (not-question_67))
                    (run)
                )
            )
          else
            (assert (not-question_20))
            (run)
            (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la mer ? (o/n) "))
            (if (eq ?response o)
              then
                (assert (question_60))
                (run)
                (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                (if (eq ?response o)
                  then
                    (assert (question_67))
                    (run)
                    (bind ?response (ask-question "Ton pokémon est-il marron ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_48))
                        (run)
                        (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_64))
                            (run)
                          else
                            (assert (not-question_64))
                            (run)
                        )
                      else
                        (assert (not-question_48))
                        (run)
                        (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_50))
                            (run)
                          else
                            (assert (not-question_50))
                            (run)
                            (bind ?response (ask-question "Ton pokémon est-il blanc ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_47))
                                (run)
                              else
                                (assert (not-question_47))
                                (run)
                            )
                        )
                    )
                  else
                    (assert (not-question_67))
                    (run)
                    (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_64))
                        (run)
                      else
                        (assert (not-question_64))
                        (run)
                        (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_50))
                            (run)
                          else
                            (assert (not-question_50))
                            (run)
                            (bind ?response (ask-question "Ton pokémon est-il blanc ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_47))
                                (run)
                              else
                                (assert (not-question_47))
                                (run)
                            )
                        )
                    )
                )
              else
                (assert (not-question_60))
                (run)
                (bind ?response (ask-question "Ton pokémon est-il de type dragon ? (o/n) "))
                (if (eq ?response o)
                  then
                    (assert (question_37))
                    (run)
                    (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_67))
                        (run)
                        (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_66))
                            (run)
                          else
                            (assert (not-question_66))
                            (run)
                        )
                      else
                        (assert (not-question_67))
                        (run)
                    )
                  else
                    (assert (not-question_37))
                    (run)
                    (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans les champs ? (o/n) "))
                    (if (eq ?response o)
                      then
                        (assert (question_53))
                        (run)
                        (bind ?response (ask-question "Ton pokémon est-il de type vol ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_39))
                            (run)
                            (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_67))
                                (run)
                              else
                                (assert (not-question_67))
                                (run)
                                (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_66))
                                    (run)
                                  else
                                    (assert (not-question_66))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon est-il marron ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_48))
                                        (run)
                                      else
                                        (assert (not-question_48))
                                        (run)
                                    )
                                )
                            )
                          else
                            (assert (not-question_39))
                            (run)
                            (bind ?response (ask-question "Ton pokémon est-il de type psy ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_35))
                                (run)
                                (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_67))
                                    (run)
                                  else
                                    (assert (not-question_67))
                                    (run)
                                )
                              else
                                (assert (not-question_35))
                                (run)
                                (bind ?response (ask-question "Ton pokémon est-il marron ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_48))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon est-il lourd (+ de 45kg) ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_43))
                                        (run)
                                      else
                                        (assert (not-question_43))
                                        (run)
                                        (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                        (if (eq ?response o)
                                          then
                                            (assert (question_67))
                                            (run)
                                          else
                                            (assert (not-question_67))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_66))
                                                (run)
                                              else
                                                (assert (not-question_66))
                                                (run)
                                                (bind ?response (ask-question "﻿Ton pokémon est-il colérique ? (o/n) "))
                                                (if (eq ?response o)
                                                  then
                                                    (assert (question_0))
                                                    (run)
                                                  else
                                                    (assert (not-question_0))
                                                    (run)
                                                )
                                            )
                                        )
                                    )
                                  else
                                    (assert (not-question_48))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_49))
                                        (run)
                                        (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                        (if (eq ?response o)
                                          then
                                            (assert (question_67))
                                            (run)
                                          else
                                            (assert (not-question_67))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_66))
                                                (run)
                                              else
                                                (assert (not-question_66))
                                                (run)
                                            )
                                        )
                                      else
                                        (assert (not-question_49))
                                        (run)
                                        (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                        (if (eq ?response o)
                                          then
                                            (assert (question_67))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon est-il rose ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_51))
                                                (run)
                                              else
                                                (assert (not-question_51))
                                                (run)
                                            )
                                          else
                                            (assert (not-question_67))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_66))
                                                (run)
                                              else
                                                (assert (not-question_66))
                                                (run)
                                                (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                                (if (eq ?response o)
                                                  then
                                                    (assert (question_63))
                                                    (run)
                                                  else
                                                    (assert (not-question_63))
                                                    (run)
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                      else
                        (assert (not-question_53))
                        (run)
                        (bind ?response (ask-question "Ton pokémon est-il de type roche ? (o/n) "))
                        (if (eq ?response o)
                          then
                            (assert (question_33))
                            (run)
                            (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_67))
                                (run)
                                (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_66))
                                    (run)
                                  else
                                    (assert (not-question_66))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_64))
                                        (run)
                                      else
                                        (assert (not-question_64))
                                        (run)
                                    )
                                )
                              else
                                (assert (not-question_67))
                                (run)
                                (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_66))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu hostile ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_57))
                                        (run)
                                      else
                                        (assert (not-question_57))
                                        (run)
                                    )
                                  else
                                    (assert (not-question_66))
                                    (run)
                                )
                            )
                          else
                            (assert (not-question_33))
                            (run)
                            (bind ?response (ask-question "Ton pokémon est-il de sexe uniquement masculin ? (o/n) "))
                            (if (eq ?response o)
                              then
                                (assert (question_22))
                                (run)
                              else
                                (assert (not-question_22))
                                (run)
                                (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu hostile ? (o/n) "))
                                (if (eq ?response o)
                                  then
                                    (assert (question_57))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_67))
                                        (run)
                                        (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                                        (if (eq ?response o)
                                          then
                                            (assert (question_64))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_63))
                                                (run)
                                              else
                                                (assert (not-question_63))
                                                (run)
                                            )
                                          else
                                            (assert (not-question_64))
                                            (run)
                                        )
                                      else
                                        (assert (not-question_67))
                                        (run)
                                        (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                                        (if (eq ?response o)
                                          then
                                            (assert (question_64))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_63))
                                                (run)
                                              else
                                                (assert (not-question_63))
                                                (run)
                                            )
                                          else
                                            (assert (not-question_64))
                                            (run)
                                        )
                                    )
                                  else
                                    (assert (not-question_57))
                                    (run)
                                    (bind ?response (ask-question "Ton pokémon est-il rose ? (o/n) "))
                                    (if (eq ?response o)
                                      then
                                        (assert (question_51))
                                        (run)
                                        (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                        (if (eq ?response o)
                                          then
                                            (assert (question_67))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_65))
                                                (run)
                                                (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                                                (if (eq ?response o)
                                                  then
                                                    (assert (question_64))
                                                    (run)
                                                  else
                                                    (assert (not-question_64))
                                                    (run)
                                                )
                                              else
                                                (assert (not-question_65))
                                                (run)
                                            )
                                          else
                                            (assert (not-question_67))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_66))
                                                (run)
                                                (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
                                                (if (eq ?response o)
                                                  then
                                                    (assert (question_65))
                                                    (run)
                                                  else
                                                    (assert (not-question_65))
                                                    (run)
                                                )
                                              else
                                                (assert (not-question_66))
                                                (run)
                                                (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                                (if (eq ?response o)
                                                  then
                                                    (assert (question_63))
                                                    (run)
                                                  else
                                                    (assert (not-question_63))
                                                    (run)
                                                    (bind ?response (ask-question "Ton pokémon est-il rare ? (o/n) "))
                                                    (if (eq ?response o)
                                                      then
                                                        (assert (question_61))
                                                        (run)
                                                      else
                                                        (assert (not-question_61))
                                                        (run)
                                                    )
                                                )
                                            )
                                        )
                                      else
                                        (assert (not-question_51))
                                        (run)
                                        (bind ?response (ask-question "Ton pokémon est-il rare ? (o/n) "))
                                        (if (eq ?response o)
                                          then
                                            (assert (question_61))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_63))
                                                (run)
                                                (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
                                                (if (eq ?response o)
                                                  then
                                                    (assert (question_49))
                                                    (run)
                                                    (bind ?response (ask-question "Ton pokémon est-il de type électrique ? (o/n) "))
                                                    (if (eq ?response o)
                                                      then
                                                        (assert (question_30))
                                                        (run)
                                                      else
                                                        (assert (not-question_30))
                                                        (run)
                                                    )
                                                  else
                                                    (assert (not-question_49))
                                                    (run)
                                                )
                                              else
                                                (assert (not-question_63))
                                                (run)
                                            )
                                          else
                                            (assert (not-question_61))
                                            (run)
                                            (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
                                            (if (eq ?response o)
                                              then
                                                (assert (question_64))
                                                (run)
                                                (bind ?response (ask-question "Ton pokémon est-il de type psy ? (o/n) "))
                                                (if (eq ?response o)
                                                  then
                                                    (assert (question_35))
                                                    (run)
                                                    (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                    (if (eq ?response o)
                                                      then
                                                        (assert (question_67))
                                                        (run)
                                                        (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                        (if (eq ?response o)
                                                          then
                                                            (assert (question_66))
                                                            (run)
                                                          else
                                                            (assert (not-question_66))
                                                            (run)
                                                        )
                                                      else
                                                        (assert (not-question_67))
                                                        (run)
                                                        (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                        (if (eq ?response o)
                                                          then
                                                            (assert (question_66))
                                                            (run)
                                                            (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                                            (if (eq ?response o)
                                                              then
                                                                (assert (question_63))
                                                                (run)
                                                              else
                                                                (assert (not-question_63))
                                                                (run)
                                                            )
                                                          else
                                                            (assert (not-question_66))
                                                            (run)
                                                        )
                                                    )
                                                  else
                                                    (assert (not-question_35))
                                                    (run)
                                                    (bind ?response (ask-question "Ton pokémon est-il de type feu ? (o/n) "))
                                                    (if (eq ?response o)
                                                      then
                                                        (assert (question_25))
                                                        (run)
                                                        (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                        (if (eq ?response o)
                                                          then
                                                            (assert (question_67))
                                                            (run)
                                                            (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                            (if (eq ?response o)
                                                              then
                                                                (assert (question_66))
                                                                (run)
                                                              else
                                                                (assert (not-question_66))
                                                                (run)
                                                            )
                                                          else
                                                            (assert (not-question_67))
                                                            (run)
                                                            (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                            (if (eq ?response o)
                                                              then
                                                                (assert (question_66))
                                                                (run)
                                                                (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
                                                                (if (eq ?response o)
                                                                  then
                                                                    (assert (question_59))
                                                                    (run)
                                                                  else
                                                                    (assert (not-question_59))
                                                                    (run)
                                                                )
                                                              else
                                                                (assert (not-question_66))
                                                                (run)
                                                            )
                                                        )
                                                      else
                                                        (assert (not-question_25))
                                                        (run)
                                                        (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans des grottes ? (o/n) "))
                                                        (if (eq ?response o)
                                                          then
                                                            (assert (question_58))
                                                            (run)
                                                            (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                            (if (eq ?response o)
                                                              then
                                                                (assert (question_67))
                                                                (run)
                                                              else
                                                                (assert (not-question_67))
                                                                (run)
                                                            )
                                                          else
                                                            (assert (not-question_58))
                                                            (run)
                                                            (bind ?response (ask-question "Ton pokémon est-il gris ? (o/n) "))
                                                            (if (eq ?response o)
                                                              then
                                                                (assert (question_52))
                                                                (run)
                                                                (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                                (if (eq ?response o)
                                                                  then
                                                                    (assert (question_67))
                                                                    (run)
                                                                    (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                                    (if (eq ?response o)
                                                                      then
                                                                        (assert (question_66))
                                                                        (run)
                                                                      else
                                                                        (assert (not-question_66))
                                                                        (run)
                                                                    )
                                                                  else
                                                                    (assert (not-question_67))
                                                                    (run)
                                                                )
                                                              else
                                                                (assert (not-question_52))
                                                                (run)
                                                                (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
                                                                (if (eq ?response o)
                                                                  then
                                                                    (assert (question_65))
                                                                    (run)
                                                                    (bind ?response (ask-question "Ton pokémon est-il blanc ? (o/n) "))
                                                                    (if (eq ?response o)
                                                                      then
                                                                        (assert (question_47))
                                                                        (run)
                                                                        (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                                        (if (eq ?response o)
                                                                          then
                                                                            (assert (question_66))
                                                                            (run)
                                                                          else
                                                                            (assert (not-question_66))
                                                                            (run)
                                                                        )
                                                                      else
                                                                        (assert (not-question_47))
                                                                        (run)
                                                                        (bind ?response (ask-question "Ton pokémon a-t-il des pinces ? (o/n) "))
                                                                        (if (eq ?response o)
                                                                          then
                                                                            (assert (question_13))
                                                                            (run)
                                                                          else
                                                                            (assert (not-question_13))
                                                                            (run)
                                                                            (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans les marécages ? (o/n) "))
                                                                            (if (eq ?response o)
                                                                              then
                                                                                (assert (question_55))
                                                                                (run)
                                                                                (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                                                (if (eq ?response o)
                                                                                  then
                                                                                    (assert (question_67))
                                                                                    (run)
                                                                                    (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                                                    (if (eq ?response o)
                                                                                      then
                                                                                        (assert (question_66))
                                                                                        (run)
                                                                                      else
                                                                                        (assert (not-question_66))
                                                                                        (run)
                                                                                        (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
                                                                                        (if (eq ?response o)
                                                                                          then
                                                                                            (assert (question_49))
                                                                                            (run)
                                                                                          else
                                                                                            (assert (not-question_49))
                                                                                            (run)
                                                                                        )
                                                                                    )
                                                                                  else
                                                                                    (assert (not-question_67))
                                                                                    (run)
                                                                                )
                                                                              else
                                                                                (assert (not-question_55))
                                                                                (run)
                                                                                (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans les montagnes ? (o/n) "))
                                                                                (if (eq ?response o)
                                                                                  then
                                                                                    (assert (question_54))
                                                                                    (run)
                                                                                    (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                                                    (if (eq ?response o)
                                                                                      then
                                                                                        (assert (question_67))
                                                                                        (run)
                                                                                        (bind ?response (ask-question "Ton pokémon est-il grand (+ de 1m) ? (o/n) "))
                                                                                        (if (eq ?response o)
                                                                                          then
                                                                                            (assert (question_41))
                                                                                            (run)
                                                                                          else
                                                                                            (assert (not-question_41))
                                                                                            (run)
                                                                                        )
                                                                                      else
                                                                                        (assert (not-question_67))
                                                                                        (run)
                                                                                        (bind ?response (ask-question "Ton pokémon est-il grand (+ de 1m) ? (o/n) "))
                                                                                        (if (eq ?response o)
                                                                                          then
                                                                                            (assert (question_41))
                                                                                            (run)
                                                                                          else
                                                                                            (assert (not-question_41))
                                                                                            (run)
                                                                                        )
                                                                                    )
                                                                                  else
                                                                                    (assert (not-question_54))
                                                                                    (run)
                                                                                    (bind ?response (ask-question "Ton pokémon est-il grand (+ de 1m) ? (o/n) "))
                                                                                    (if (eq ?response o)
                                                                                      then
                                                                                        (assert (question_41))
                                                                                        (run)
                                                                                        (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                                                        (if (eq ?response o)
                                                                                          then
                                                                                            (assert (question_67))
                                                                                            (run)
                                                                                            (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                                                            (if (eq ?response o)
                                                                                              then
                                                                                                (assert (question_66))
                                                                                                (run)
                                                                                              else
                                                                                                (assert (not-question_66))
                                                                                                (run)
                                                                                                (bind ?response (ask-question "Ton pokémon est-il de type combat ? (o/n) "))
                                                                                                (if (eq ?response o)
                                                                                                  then
                                                                                                    (assert (question_32))
                                                                                                    (run)
                                                                                                  else
                                                                                                    (assert (not-question_32))
                                                                                                    (run)
                                                                                                )
                                                                                            )
                                                                                          else
                                                                                            (assert (not-question_67))
                                                                                            (run)
                                                                                        )
                                                                                      else
                                                                                        (assert (not-question_41))
                                                                                        (run)
                                                                                        (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                                                        (if (eq ?response o)
                                                                                          then
                                                                                            (assert (question_67))
                                                                                            (run)
                                                                                            (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                                                                            (if (eq ?response o)
                                                                                              then
                                                                                                (assert (question_63))
                                                                                                (run)
                                                                                                (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                                                                (if (eq ?response o)
                                                                                                  then
                                                                                                    (assert (question_66))
                                                                                                    (run)
                                                                                                  else
                                                                                                    (assert (not-question_66))
                                                                                                    (run)
                                                                                                )
                                                                                              else
                                                                                                (assert (not-question_63))
                                                                                                (run)
                                                                                                (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
                                                                                                (if (eq ?response o)
                                                                                                  then
                                                                                                    (assert (question_59))
                                                                                                    (run)
                                                                                                  else
                                                                                                    (assert (not-question_59))
                                                                                                    (run)
                                                                                                    (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
                                                                                                    (if (eq ?response o)
                                                                                                      then
                                                                                                        (assert (question_49))
                                                                                                        (run)
                                                                                                      else
                                                                                                        (assert (not-question_49))
                                                                                                        (run)
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                          else
                                                                                            (assert (not-question_67))
                                                                                            (run)
                                                                                            (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                                                                            (if (eq ?response o)
                                                                                              then
                                                                                                (assert (question_63))
                                                                                                (run)
                                                                                              else
                                                                                                (assert (not-question_63))
                                                                                                (run)
                                                                                                (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
                                                                                                (if (eq ?response o)
                                                                                                  then
                                                                                                    (assert (question_59))
                                                                                                    (run)
                                                                                                  else
                                                                                                    (assert (not-question_59))
                                                                                                    (run)
                                                                                                    (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
                                                                                                    (if (eq ?response o)
                                                                                                      then
                                                                                                        (assert (question_49))
                                                                                                        (run)
                                                                                                      else
                                                                                                        (assert (not-question_49))
                                                                                                        (run)
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                        )
                                                                                    )
                                                                                )
                                                                            )
                                                                        )
                                                                    )
                                                                  else
                                                                    (assert (not-question_65))
                                                                    (run)
                                                                    (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
                                                                    (if (eq ?response o)
                                                                      then
                                                                        (assert (question_63))
                                                                        (run)
                                                                      else
                                                                        (assert (not-question_63))
                                                                        (run)
                                                                        (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                                        (if (eq ?response o)
                                                                          then
                                                                            (assert (question_67))
                                                                            (run)
                                                                          else
                                                                            (assert (not-question_67))
                                                                            (run)
                                                                            (bind ?response (ask-question "Ton pokémon est-il de type combat ? (o/n) "))
                                                                            (if (eq ?response o)
                                                                              then
                                                                                (assert (question_32))
                                                                                (run)
                                                                              else
                                                                                (assert (not-question_32))
                                                                                (run)
                                                                            )
                                                                        )
                                                                    )
                                                                )
                                                            )
                                                        )
                                                    )
                                                )
                                              else
                                                (assert (not-question_64))
                                                (run)
                                                (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
                                                (if (eq ?response o)
                                                  then
                                                    (assert (question_67))
                                                    (run)
                                                    (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
                                                    (if (eq ?response o)
                                                      then
                                                        (assert (question_56))
                                                        (run)
                                                        (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                        (if (eq ?response o)
                                                          then
                                                            (assert (question_66))
                                                            (run)
                                                          else
                                                            (assert (not-question_66))
                                                            (run)
                                                        )
                                                      else
                                                        (assert (not-question_56))
                                                        (run)
                                                        (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
                                                        (if (eq ?response o)
                                                          then
                                                            (assert (question_65))
                                                            (run)
                                                            (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
                                                            (if (eq ?response o)
                                                              then
                                                                (assert (question_59))
                                                                (run)
                                                              else
                                                                (assert (not-question_59))
                                                                (run)
                                                            )
                                                          else
                                                            (assert (not-question_65))
                                                            (run)
                                                            (bind ?response (ask-question "Ton pokémon est-il bleu ? (o/n) "))
                                                            (if (eq ?response o)
                                                              then
                                                                (assert (question_46))
                                                                (run)
                                                              else
                                                                (assert (not-question_46))
                                                                (run)
                                                            )
                                                        )
                                                    )
                                                  else
                                                    (assert (not-question_67))
                                                    (run)
                                                    (bind ?response (ask-question "Ton pokémon est-il gris ? (o/n) "))
                                                    (if (eq ?response o)
                                                      then
                                                        (assert (question_52))
                                                        (run)
                                                      else
                                                        (assert (not-question_52))
                                                        (run)
                                                        (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
                                                        (if (eq ?response o)
                                                          then
                                                            (assert (question_65))
                                                            (run)
                                                            (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
                                                            (if (eq ?response o)
                                                              then
                                                                (assert (question_66))
                                                                (run)
                                                                (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
                                                                (if (eq ?response o)
                                                                  then
                                                                    (assert (question_59))
                                                                    (run)
                                                                  else
                                                                    (assert (not-question_59))
                                                                    (run)
                                                                )
                                                              else
                                                                (assert (not-question_66))
                                                                (run)
                                                            )
                                                          else
                                                            (assert (not-question_65))
                                                            (run)
                                                            (bind ?response (ask-question "Ton pokémon est-il bleu ? (o/n) "))
                                                            (if (eq ?response o)
                                                              then
                                                                (assert (question_46))
                                                                (run)
                                                              else
                                                                (assert (not-question_46))
                                                                (run)
                                                            )
                                                        )
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    )
)

