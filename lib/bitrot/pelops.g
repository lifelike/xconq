(game-module "pelops"
  (title "Peloponnesian War")
  (version "1.0")
  (blurb "Athens and Sparta fighting for control of Greece in 431 BC.")
  (base-module "greek")
  (variants
   (world-seen true)
   (see-all false)
   (sequential false)
  )
)

(scorekeeper (do last-side-wins))

(set terrain-seen true)

;; Suppress random startups (should hack synthesis list)
(add u* start-with 0)
(add u* independent-near-start 0)
(table independent-density (u* t* 0))

;; Action in the war was limited to the general vicinity of Greece and the Aegean.

(area 101 49 (restrict 200 100 30 32))

(set initial-date "Mar -431")

;; One of the interesting properties of the Pelopponnesian War was that
;; it was really a three-sided contest, with Persia always waiting in
;; the wings, looking for opportunities to influence events.

(set sides-min 3)
(set sides-max 3)

(side 1 (name "Athens") (noun "Athenian") (emblem-name "owl"))

(side 2 (name "Sparta") (noun "Spartan") (emblem-name "shield-spear"))

(side 3 (name "Persia") (noun "Persian") (emblem-name "winged-bull"))

; Turn off random naming from base module.

(set feature-namers
  '((islands none)(mountains none)))

(include "u-greek")

;;; Initial alignments of cities.

(unit "Abdera" (s 1))
(unit "Abydos" (s 1))
(unit "Acanthus" (s 1))
(unit "Aegina" (s 1))
(unit "Amphipolis" (s 1))
(unit "Andros" (s 1) (os 1))
(unit "Athens" (s 1) (os 1) (m 100 3000))
(unit "Brauron" (s 1) (os 1))
(unit "Byzantium" (s 1))
(unit "Calchedon" (s 1))
(unit "Catana" (s 1))
(unit "Chalcis" (s 1))
(unit "Chios" (s 1))
(unit "Corcyra" (s 1))
(unit "Cos" (s 1))
(unit "Cyzicus" (s 1))
(unit "Elaea" (s 1))
(unit "Ephesus" (s 1))
(unit "Erythrae" (s 1))
(unit "Halicarnassus" (s 1))
(unit "Ialysus" (s 1))
(unit "Ilium" (s 1))
(unit "Lemnos" (s 1))
(unit "Leontini" (s 1))
(unit "Lindos" (s 1))
(unit "Methone" (s 1))
(unit "Methymna" (s 1))
(unit "Miletus" (s 1))
(unit "Myndus" (s 1))
(unit "Mytilene" (s 1))
(unit "Naupactus" (s 1))
(unit "Naxos" (s 1) (os 1))
(unit "Olynthus" (s 1))
(unit "Parium" (s 1))
(unit "Paros" (s 1) (os 1))
(unit "Perinthus" (s 1))
(unit "Plataeae" (s 1) (os 1))
(unit "Same" (s 1))
(unit "Samos" (s 1))
(unit "Sestos" (s 1))
(unit "Thasos" (s 1))
(unit "Zacynthus" (s 1))

(unit "Sparta" (s 2) (os 2) (m 100 1000))
(unit "Aegae" (s 2))
(unit "Ambracia" (s 2))
(unit "Anactorium" (s 2))
(unit "Delphi" (s 2))
(unit "Corinth" (s 2))
(unit "Elis" (s 2) (os 2))
(unit "Epidaurus" (s 2))
(unit "Gythium" (s 2) (os 2))
(unit "Kythera" (s 2))
(unit "Lepreum" (s 2))
(unit "Megara" (s 2))
(unit "Olympia" (s 2))
(unit "Pella" (s 2))
(unit "Pharae" (s 2))
(unit "Potidaea" (s 2))
(unit "Pylos" (s 2) (os 2))
(unit "Sicyon" (s 2))
(unit "Syracuse" (s 2))
(unit "Tegea" (s 2))
(unit "Thebes" (s 2) (os 2))
(unit "Therma" (s 2))
(unit "Thyrea" (s 2))
(unit "Troezen" (s 2))

(unit "Anaea" (s 3) (os 3))
(unit "Ancyra" (s 3) (os 3))
(unit "Sardis" (s 3) (os 3) (m 100 9000))
(unit "Magnesia" (s 3) (os 3))
(unit "Myra" (s 3) (os 3))
(unit "Nysa" (s 3) (os 3))
(unit "Pergamum" (s 3) (os 3))
(unit "Phaselis" (s 3) (os 3))
(unit "Tralles" (s 3) (os 3))
(unit "Xanthus" (s 3) (os 3))

;; Get rid of cities on the restricted map, but belonging to later times.

(unit "Lysimachia" (hp 0))
(unit "Megalopolis" (hp 0))
(unit "Myrlea" (hp 0))
(unit "Nicaea" (hp 0))
(unit "Smyrna" (hp 0))

;; Military units in existence already.

(unit-defaults (@ 30 32))

(hoplite (s 1) (in "Athens"))
(hoplite (s 1) (in "Athens"))
(hoplite (s 1) (in "Byzantium"))
(hoplite (s 1) (in "Ilium"))
(hoplite (s 1) (in "Miletus"))
(hoplite 44 40 1)
(hoplite 44 40 1)
(hoplite 44 40 1)
(hoplite 44 40 1)
(hoplite 46 38 1)
(hoplite 46 38 1)
(trireme (s 1) (in "Athens"))
(trireme (s 1) (in "Athens"))
(trireme (s 1) (in "Byzantium"))
(trireme (s 1) (in "Byzantium"))
(trireme 54 23 1)
(trireme 54 23 1)
(trireme 54 23 1)
(trireme 54 23 1)
(trireme 55 23 1)
(trireme 55 23 1)
(trireme 56 23 1)
(trireme 56 23 1)
(trireme 60 24 1)

(hoplite (s 2) (in "Ambracia"))
(hoplite (s 2) (in "Corinth"))
(hoplite (s 2) (in "Corinth"))
(hoplite (s 2) (in "Sicyon"))
(hoplite (s 2) (in "Sparta"))
(hoplite (s 2) (in "Sparta"))
(hoplite (s 2) (in "Sparta"))
(hoplite (s 2) (in "Sparta"))
(hoplite (s 2) (in "Thebes"))
(hoplite (s 2) (in "Thebes"))

(peltast (s 3) (in "Sardis"))
(peltast (s 3) (in "Sardis"))
(archer (s 3) (in "Sardis"))
(archer (s 3) (in "Sardis"))
(peltast (s 3) (in "Tralles"))
(peltast (s 3) (in "Tralles"))
(cavalry 76 28 3)
(cavalry 76 28 3)
(cavalry 76 28 3)
(cavalry 76 28 3)
