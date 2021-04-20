# Sensor_Goualou_Cortes

# Sommaire

# 1. Introduction
Ce projet a été réalisé au cours de l'unité de formation "du capteur au banc de test" de la 4ème année de la formation "Génie Physique" à l'INSA Toulouse. L'objectif de ce projet est de réaliser un capteur de déformation à base de graphite, qui est un très bon conducteur.

Le capteur se base sur le fait que les électrons se déplacent entre les nanoparticules de graphite par effet tunnel. Alors, lorsque nous exercerons une contrainte mécanique afin de plier le capteur, nous allons modifier la distance entre les nanoparticules, et ainsi modifier la conductivité électrique du capteur, ce qui se traduit par une variation de résistance alors mesurable.
Nous voulons utiliser cette propriété pour réaliser une jauge de contrainte avec plusieurs avantages, tels que peu onéreux ainsi que écoresponsable.

Nous allons donc colorier au crayon des cpateurs sur une feuille de papier afin d'y laisser une fine couche de graphite.

Afin de pouvoir récolter la valeur de la résistance du capteur, nous avons conçu un shield avec un amplificateur transimpédance, un écran OLED, un encodeur rotatoire, ainsi qu'un module Bluetooth. Nous plaçons alors ce shield sur une carte Arduino UNO, programmé par un code Arduino.

Nous présentons ci-dessous les différentes étapes de l'élaboration de notre capteur :
- Code Arduino
- Design du shield
- Application android
- Résultat, Datasheet

# 2.Arduino
Nous avons réalisé un code Arduino fonctionnel permettant de contrôler un amplificateur transimpédance, un encodeur rotatoire, un écran OLED ainsi qu'un module Bluetooth. Nous l'avons ensuite testé en effectuant nos premiers branchements.

# 3. Kicad
Nous avons réalisé le design de notre shield à l'aide du logiciel KICAD

+Image Kicad à mettre

# 4. Application Android
Nous avons utilisé le logiciel MIT App Inventor afin de développer une application android APK, capable de communiquer et recevoir des données à distance à l'aide du module Bluetooth placé sur notre shield.
Nous pouvons ainsi avec plus de confort et de lisibilité l'utiliser pour mesurer la variation de résistance de nos capteurs en fonction de la déformation.
Notre application se présent sur le lien suivant : http://ai2.appinventor.mit.edu . 
Celle-ci permet la connexion Bluetooth avec notre Shield, et nous affiche la valeur de résistance et de la tension en temps réel et nous trace également l’évolution de la résistance du capteur en fonction de sa déformation. 


# 5. Résultats, Datasheet

Nous avons créé plusieurs capteurs, en les "coloriant" avec divers types de crayons à papier (HB,B,...). Ces différents crayons se différencient par la différence de la concentration de graphite. Nous avons pu avoir des résultats sur les crayons à papier B et HB. 

# 6. Conclusion et Pistes d'amélioration
