(defrule ask-question_29_0
  (default)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type poison ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_29))
    else
      (assert (not-question_29))
  )
)

(defrule ask-question_20_1
  (not-question_29)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il une carapace ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_20))
    else
      (assert (not-question_20))
  )
)

(defrule ask-question_66_2
  (not-question_29)
  (question_20)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_65_3
  (not-question_29)
  (question_20)
  (question_66)
=>
  (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_65))
    else
      (assert (not-question_65))
  )
)

(defrule ask-question_50_4
  (not-question_29)
  (question_20)
  (question_66)
  (not-question_65)
=>
  (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_50))
    else
      (assert (not-question_50))
  )
)

(defrule ask-question_67_5
  (not-question_29)
  (question_20)
  (not-question_66)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_65_6
  (not-question_29)
  (question_20)
  (not-question_66)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_65))
    else
      (assert (not-question_65))
  )
)

(defrule ask-question_60_7
  (not-question_29)
  (not-question_20)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la mer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_60))
    else
      (assert (not-question_60))
  )
)

(defrule ask-question_37_8
  (not-question_29)
  (not-question_20)
  (not-question_60)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type dragon ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_37))
    else
      (assert (not-question_37))
  )
)

(defrule ask-question_53_9
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans les champs ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_53))
    else
      (assert (not-question_53))
  )
)

(defrule ask-question_33_10
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type roche ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_33))
    else
      (assert (not-question_33))
  )
)

(defrule ask-question_67_11
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (question_33)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_12
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (question_33)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_64_13
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (question_33)
  (question_67)
  (not-question_66)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_66_14
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (question_33)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_57_15
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (question_33)
  (not-question_67)
  (question_66)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu hostile ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_57))
    else
      (assert (not-question_57))
  )
)

(defrule ask-question_22_16
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
=>
  (bind ?response (ask-question "Ton pokémon est-il de sexe uniquement masculin ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_22))
    else
      (assert (not-question_22))
  )
)

(defrule ask-question_57_17
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu hostile ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_57))
    else
      (assert (not-question_57))
  )
)

(defrule ask-question_67_18
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (question_57)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_64_19
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (question_57)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_63_20
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (question_57)
  (question_67)
  (question_64)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_64_21
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (question_57)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_63_22
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (question_57)
  (not-question_67)
  (question_64)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_51_23
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
=>
  (bind ?response (ask-question "Ton pokémon est-il rose ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_51))
    else
      (assert (not-question_51))
  )
)

(defrule ask-question_67_24
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (question_51)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_25
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (question_51)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_65_26
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (question_51)
  (not-question_67)
  (question_66)
=>
  (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_65))
    else
      (assert (not-question_65))
  )
)

(defrule ask-question_63_27
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (question_51)
  (not-question_67)
  (not-question_66)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_61_28
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (question_51)
  (not-question_67)
  (not-question_66)
  (not-question_63)
=>
  (bind ?response (ask-question "Ton pokémon est-il rare ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_61))
    else
      (assert (not-question_61))
  )
)

(defrule ask-question_65_29
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (question_51)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_65))
    else
      (assert (not-question_65))
  )
)

(defrule ask-question_64_30
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (question_51)
  (question_67)
  (question_65)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_61_31
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
=>
  (bind ?response (ask-question "Ton pokémon est-il rare ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_61))
    else
      (assert (not-question_61))
  )
)

(defrule ask-question_64_32
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_67_33
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_56_34
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_56))
    else
      (assert (not-question_56))
  )
)

(defrule ask-question_66_35
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (question_67)
  (question_56)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_65_36
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (question_67)
  (not-question_56)
=>
  (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_65))
    else
      (assert (not-question_65))
  )
)

(defrule ask-question_59_37
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (question_67)
  (not-question_56)
  (question_65)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_59))
    else
      (assert (not-question_59))
  )
)

(defrule ask-question_46_38
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (question_67)
  (not-question_56)
  (not-question_65)
=>
  (bind ?response (ask-question "Ton pokémon est-il bleu ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_46))
    else
      (assert (not-question_46))
  )
)

(defrule ask-question_52_39
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon est-il gris ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_52))
    else
      (assert (not-question_52))
  )
)

(defrule ask-question_65_40
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (not-question_67)
  (not-question_52)
=>
  (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_65))
    else
      (assert (not-question_65))
  )
)

(defrule ask-question_46_41
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (not-question_67)
  (not-question_52)
  (not-question_65)
=>
  (bind ?response (ask-question "Ton pokémon est-il bleu ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_46))
    else
      (assert (not-question_46))
  )
)

(defrule ask-question_66_42
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (not-question_67)
  (not-question_52)
  (question_65)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_59_43
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (not-question_64)
  (not-question_67)
  (not-question_52)
  (question_65)
  (question_66)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_59))
    else
      (assert (not-question_59))
  )
)

(defrule ask-question_35_44
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type psy ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_35))
    else
      (assert (not-question_35))
  )
)

(defrule ask-question_67_45
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (question_35)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_46
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (question_35)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_66_47
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (question_35)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_63_48
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (question_35)
  (not-question_67)
  (question_66)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_25_49
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type feu ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_25))
    else
      (assert (not-question_25))
  )
)

(defrule ask-question_58_50
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans des grottes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_58))
    else
      (assert (not-question_58))
  )
)

(defrule ask-question_67_51
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (question_58)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_52_52
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
=>
  (bind ?response (ask-question "Ton pokémon est-il gris ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_52))
    else
      (assert (not-question_52))
  )
)

(defrule ask-question_67_53
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (question_52)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_54
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (question_52)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_65_55
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
=>
  (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_65))
    else
      (assert (not-question_65))
  )
)

(defrule ask-question_47_56
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
=>
  (bind ?response (ask-question "Ton pokémon est-il blanc ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_47))
    else
      (assert (not-question_47))
  )
)

(defrule ask-question_66_57
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (question_47)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_13_58
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il des pinces ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_13))
    else
      (assert (not-question_13))
  )
)

(defrule ask-question_55_59
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans les marécages ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_55))
    else
      (assert (not-question_55))
  )
)

(defrule ask-question_54_60
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans les montagnes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_54))
    else
      (assert (not-question_54))
  )
)

(defrule ask-question_67_61
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (question_54)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_41_62
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (question_54)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon est-il grand (+ de 1m) ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_41))
    else
      (assert (not-question_41))
  )
)

(defrule ask-question_41_63
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (question_54)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon est-il grand (+ de 1m) ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_41))
    else
      (assert (not-question_41))
  )
)

(defrule ask-question_41_64
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
=>
  (bind ?response (ask-question "Ton pokémon est-il grand (+ de 1m) ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_41))
    else
      (assert (not-question_41))
  )
)

(defrule ask-question_67_65
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (not-question_41)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_63_66
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (not-question_41)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_59_67
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (not-question_41)
  (not-question_67)
  (not-question_63)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_59))
    else
      (assert (not-question_59))
  )
)

(defrule ask-question_49_68
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (not-question_41)
  (not-question_67)
  (not-question_63)
  (not-question_59)
=>
  (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_49))
    else
      (assert (not-question_49))
  )
)

(defrule ask-question_63_69
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (not-question_41)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_66_70
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (not-question_41)
  (question_67)
  (question_63)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_59_71
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (not-question_41)
  (question_67)
  (not-question_63)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_59))
    else
      (assert (not-question_59))
  )
)

(defrule ask-question_49_72
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (not-question_41)
  (question_67)
  (not-question_63)
  (not-question_59)
=>
  (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_49))
    else
      (assert (not-question_49))
  )
)

(defrule ask-question_67_73
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (question_41)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_74
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (question_41)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_32_75
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (not-question_55)
  (not-question_54)
  (question_41)
  (question_67)
  (not-question_66)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type combat ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_32))
    else
      (assert (not-question_32))
  )
)

(defrule ask-question_67_76
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (question_55)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_77
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (question_55)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_49_78
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (question_65)
  (not-question_47)
  (not-question_13)
  (question_55)
  (question_67)
  (not-question_66)
=>
  (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_49))
    else
      (assert (not-question_49))
  )
)

(defrule ask-question_63_79
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (not-question_65)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_67_80
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (not-question_65)
  (not-question_63)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_32_81
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (not-question_25)
  (not-question_58)
  (not-question_52)
  (not-question_65)
  (not-question_63)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type combat ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_32))
    else
      (assert (not-question_32))
  )
)

(defrule ask-question_67_82
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (question_25)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_83
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (question_25)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_66_84
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (question_25)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_59_85
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (not-question_61)
  (question_64)
  (not-question_35)
  (question_25)
  (not-question_67)
  (question_66)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_59))
    else
      (assert (not-question_59))
  )
)

(defrule ask-question_63_86
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (question_61)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_49_87
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (question_61)
  (question_63)
=>
  (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_49))
    else
      (assert (not-question_49))
  )
)

(defrule ask-question_30_88
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (not-question_53)
  (not-question_33)
  (not-question_22)
  (not-question_57)
  (not-question_51)
  (question_61)
  (question_63)
  (question_49)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type électrique ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_30))
    else
      (assert (not-question_30))
  )
)

(defrule ask-question_39_89
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type vol ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_39))
    else
      (assert (not-question_39))
  )
)

(defrule ask-question_35_90
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type psy ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_35))
    else
      (assert (not-question_35))
  )
)

(defrule ask-question_67_91
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (question_35)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_48_92
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
=>
  (bind ?response (ask-question "Ton pokémon est-il marron ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_48))
    else
      (assert (not-question_48))
  )
)

(defrule ask-question_43_93
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (question_48)
=>
  (bind ?response (ask-question "Ton pokémon est-il lourd (+ de 45kg) ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_43))
    else
      (assert (not-question_43))
  )
)

(defrule ask-question_67_94
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (question_48)
  (not-question_43)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_95
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (question_48)
  (not-question_43)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_0_96
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (question_48)
  (not-question_43)
  (not-question_67)
  (not-question_66)
=>
  (bind ?response (ask-question "﻿Ton pokémon est-il colérique ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_0))
    else
      (assert (not-question_0))
  )
)

(defrule ask-question_49_97
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (not-question_48)
=>
  (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_49))
    else
      (assert (not-question_49))
  )
)

(defrule ask-question_67_98
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (not-question_48)
  (question_49)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_99
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (not-question_48)
  (question_49)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_67_100
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (not-question_48)
  (not-question_49)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_51_101
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (not-question_48)
  (not-question_49)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon est-il rose ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_51))
    else
      (assert (not-question_51))
  )
)

(defrule ask-question_66_102
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (not-question_48)
  (not-question_49)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_63_103
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (not-question_39)
  (not-question_35)
  (not-question_48)
  (not-question_49)
  (not-question_67)
  (not-question_66)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_67_104
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (question_39)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_105
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (question_39)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_48_106
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (not-question_37)
  (question_53)
  (question_39)
  (not-question_67)
  (not-question_66)
=>
  (bind ?response (ask-question "Ton pokémon est-il marron ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_48))
    else
      (assert (not-question_48))
  )
)

(defrule ask-question_67_107
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (question_37)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_66_108
  (not-question_29)
  (not-question_20)
  (not-question_60)
  (question_37)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_67_109
  (not-question_29)
  (not-question_20)
  (question_60)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_64_110
  (not-question_29)
  (not-question_20)
  (question_60)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_50_111
  (not-question_29)
  (not-question_20)
  (question_60)
  (not-question_67)
  (not-question_64)
=>
  (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_50))
    else
      (assert (not-question_50))
  )
)

(defrule ask-question_47_112
  (not-question_29)
  (not-question_20)
  (question_60)
  (not-question_67)
  (not-question_64)
  (not-question_50)
=>
  (bind ?response (ask-question "Ton pokémon est-il blanc ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_47))
    else
      (assert (not-question_47))
  )
)

(defrule ask-question_48_113
  (not-question_29)
  (not-question_20)
  (question_60)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon est-il marron ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_48))
    else
      (assert (not-question_48))
  )
)

(defrule ask-question_64_114
  (not-question_29)
  (not-question_20)
  (question_60)
  (question_67)
  (question_48)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_50_115
  (not-question_29)
  (not-question_20)
  (question_60)
  (question_67)
  (not-question_48)
=>
  (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_50))
    else
      (assert (not-question_50))
  )
)

(defrule ask-question_47_116
  (not-question_29)
  (not-question_20)
  (question_60)
  (question_67)
  (not-question_48)
  (not-question_50)
=>
  (bind ?response (ask-question "Ton pokémon est-il blanc ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_47))
    else
      (assert (not-question_47))
  )
)

(defrule ask-question_66_117
  (question_29)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il déjà évolué ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_66))
    else
      (assert (not-question_66))
  )
)

(defrule ask-question_62_118
  (question_29)
  (not-question_66)
=>
  (bind ?response (ask-question "Ton pokémon posséde t-il uniquement 4 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_62))
    else
      (assert (not-question_62))
  )
)

(defrule ask-question_41_119
  (question_29)
  (not-question_66)
  (not-question_62)
=>
  (bind ?response (ask-question "Ton pokémon est-il grand (+ de 1m) ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_41))
    else
      (assert (not-question_41))
  )
)

(defrule ask-question_64_120
  (question_29)
  (not-question_66)
  (not-question_62)
  (not-question_41)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_56_121
  (question_29)
  (not-question_66)
  (not-question_62)
  (not-question_41)
  (question_64)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_56))
    else
      (assert (not-question_56))
  )
)

(defrule ask-question_65_122
  (question_29)
  (not-question_66)
  (not-question_62)
  (not-question_41)
  (not-question_64)
=>
  (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_65))
    else
      (assert (not-question_65))
  )
)

(defrule ask-question_56_123
  (question_29)
  (not-question_66)
  (not-question_62)
  (not-question_41)
  (not-question_64)
  (question_65)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_56))
    else
      (assert (not-question_56))
  )
)

(defrule ask-question_59_124
  (question_29)
  (not-question_66)
  (not-question_62)
  (question_41)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_59))
    else
      (assert (not-question_59))
  )
)

(defrule ask-question_17_125
  (question_29)
  (not-question_66)
  (not-question_62)
  (question_41)
  (question_59)
=>
  (bind ?response (ask-question "Ton pokémon peut-il voler ou léviter ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_17))
    else
      (assert (not-question_17))
  )
)

(defrule ask-question_56_126
  (question_29)
  (not-question_66)
  (question_62)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_56))
    else
      (assert (not-question_56))
  )
)

(defrule ask-question_44_127
  (question_29)
  (not-question_66)
  (question_62)
  (not-question_56)
=>
  (bind ?response (ask-question "Ton pokémon est-il vert ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_44))
    else
      (assert (not-question_44))
  )
)

(defrule ask-question_59_128
  (question_29)
  (question_66)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans un milieu urbain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_59))
    else
      (assert (not-question_59))
  )
)

(defrule ask-question_17_129
  (question_29)
  (question_66)
  (question_59)
=>
  (bind ?response (ask-question "Ton pokémon peut-il voler ou léviter ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_17))
    else
      (assert (not-question_17))
  )
)

(defrule ask-question_58_130
  (question_29)
  (question_66)
  (not-question_59)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans des grottes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_58))
    else
      (assert (not-question_58))
  )
)

(defrule ask-question_67_131
  (question_29)
  (question_66)
  (not-question_59)
  (question_58)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_67_132
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
=>
  (bind ?response (ask-question "Ton pokémon peut-il évoluer ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_67))
    else
      (assert (not-question_67))
  )
)

(defrule ask-question_50_133
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (question_67)
=>
  (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_50))
    else
      (assert (not-question_50))
  )
)

(defrule ask-question_64_134
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (question_67)
  (not-question_50)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_49_135
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (question_67)
  (not-question_50)
  (not-question_64)
=>
  (bind ?response (ask-question "Ton pokémon est-il jaune ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_49))
    else
      (assert (not-question_49))
  )
)

(defrule ask-question_46_136
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (question_67)
  (not-question_50)
  (question_64)
=>
  (bind ?response (ask-question "Ton pokémon est-il bleu ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_46))
    else
      (assert (not-question_46))
  )
)

(defrule ask-question_24_137
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (question_67)
  (not-question_50)
  (question_64)
  (question_46)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type herbe ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_24))
    else
      (assert (not-question_24))
  )
)

(defrule ask-question_64_138
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (not-question_67)
=>
  (bind ?response (ask-question "Ton pokémon a-t-il au moins une patte ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_64))
    else
      (assert (not-question_64))
  )
)

(defrule ask-question_65_139
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (not-question_67)
  (not-question_64)
=>
  (bind ?response (ask-question "Ton pokémon est-il sous terrain ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_65))
    else
      (assert (not-question_65))
  )
)

(defrule ask-question_56_140
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (not-question_67)
  (not-question_64)
  (question_65)
=>
  (bind ?response (ask-question "Ton pokémon se trouve t'il généralement dans la fôret ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_56))
    else
      (assert (not-question_56))
  )
)

(defrule ask-question_50_141
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (not-question_67)
  (not-question_64)
  (question_65)
  (question_56)
=>
  (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_50))
    else
      (assert (not-question_50))
  )
)

(defrule ask-question_31_142
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (not-question_67)
  (question_64)
=>
  (bind ?response (ask-question "Ton pokémon est-il de type sol ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_31))
    else
      (assert (not-question_31))
  )
)

(defrule ask-question_50_143
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (not-question_67)
  (question_64)
  (question_31)
=>
  (bind ?response (ask-question "Ton pokémon est-il violet ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_50))
    else
      (assert (not-question_50))
  )
)

(defrule ask-question_63_144
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (not-question_67)
  (question_64)
  (not-question_31)
=>
  (bind ?response (ask-question "Ton pokémon possède t-il uniquement 2 pattes ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_63))
    else
      (assert (not-question_63))
  )
)

(defrule ask-question_45_145
  (question_29)
  (question_66)
  (not-question_59)
  (not-question_58)
  (not-question_67)
  (question_64)
  (not-question_31)
  (not-question_63)
=>
  (bind ?response (ask-question "Ton pokémon est-il rouge ? (o/n) "))
  (if (eq ?response o)
    then
      (assert (question_45))
    else
      (assert (not-question_45))
  )
)

