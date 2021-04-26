# Sensor_Goualou_Cortes

# Sommaire

<!-- TOC depthFrom:2 -->
  - [1. Introduction](#1-Introduction)
  - [2. Code Arduino](#2-Code-Arduino)
  - [3. Kicad](#3-kicad)
  - [4. Application Android](#4-Application-Android)
  - [5. Resultats et datasheet](#5-Resultats-et-datasheet)
  - [6. Conclusion et pistes d'amelioration](#5-Conclusion-et-pistes-d'amelioration)
  - [7. Contact](#7-Contact)
<!-- /TOC -->

# 1. Introduction
Ce projet a été réalisé au cours de l'unité de formation "Du Capteur au Banc de Test" de la 4ème année du cursus “Génie Physique” à l’INSA de Toulouse.  L'objectif de ce dernier est de réaliser un capteur de déformation à base de graphite. 

Le graphite est un allotrope naturel de Carbone (comme le diamant), avec la propriété très  intéressante d’avoir une très bonne conductivité électrique.

Le capteur se base sur le fait que les électrons se déplacent entre les nanoparticules de graphite par effet tunnel. L’effet tunnel est un phénomène quantique, qui autorise certains objets quantiques (ici, ce sont les électrons), à franchir une barrière de potentiel alors que son énergie est inférieure à celle minimale pour franchir la barrière.
Lorsque nous exerçons une contrainte mécanique afin de plier le capteur, nous allons modifier la distance entre les nanoparticules du capteur, et ainsi modifier sa conductivité électrique, ce qui se traduit par une variation de résistance alors mesurable. Nous voulons utiliser cette propriété pour réaliser une jauge de contrainte avec plusieurs avantages, tels que peu onéreux ainsi que écoresponsable.

Nous allons donc colorier au crayon des capteurs sur une feuille de papier afin d'y laisser une fine couche de graphite. Nous avons la possibilité d’utiliser plusieurs types de crayons, qui se différencient par une variation de la concentration de graphite contenue dans ces derniers. Cette différence nous donnera en fonction de la déformation imposée plusieurs comportements de résistances.  

Afin de pouvoir relever la valeur de la résistance du capteur, nous avons conçu une shield avec un amplificateur transimpédance, un écran OLED, un encodeur rotatoire, ainsi qu'un module Bluetooth. Nous plaçons alors cette shield sur une carte Arduino UNO, programmée par un code Arduino.

Nous présentons ci-dessous les différentes étapes de l'élaboration de notre capteur :
- Code Arduino
- Design du shield
- Application android
- Résultat, Datasheet

# 2.Code Arduino
Nous avons réalisé un code Arduino fonctionnel, qui nous permet de contrôler un amplificateur transimpédance, un écran OLED ainsi qu’un module Bluetooth. Le code Arduino se trouve dans le dossier “Main_Code”.

Ce code assure plusieurs fonctions.
Il connaît les variables du circuit (résistance, tension d’entrée), et est capable de lire la tension de sortie du circuit, sur le pin digital A0. Alors nous sommes à même de calculer dans le code la valeur de la tension aux bornes de la résistance, et donc la valeur de la résistance du capteur.
Il assure également l’envoie de données sur l'application à l’aide du module bluetooth. Pour cela, il faut s’assurer que la carte arduino alimente le module,  et s'occupe de la communication des données.
L’affichage sur l’écran OLED de la valeur de la tension aux bornes du capteur et de la résistance est également géré par le code. Pour cela, nous avons dû télécharger des librairies Adafruit, puis gérer l’affichage des grandeurs physiques souhaitées sur l’écran.


Notons que ce code n’utilise pas l’encodeur rotatoire. En effet, lorsque nous agissons sur l’encodeur rotatoire de notre PCB, il y a un court circuit qui éteint nos appareils. Nous avons donc décidé de réaliser l’ensemble du dispositif en laissant l’encodeur rotatoire, mais sans l’utiliser.
De plus, la partie du code utilisant l’encodeur rotatoire est bien présente afin de réaliser un menu sur l’OLED. Mais le code n’est pas terminé, et demande encore quelques ajustements pour être fonctionnel.


# 3. Kicad
Nous avons utilisé le logiciel KiCad afin de réaliser la “shield”, qui nous permettra de mesurer la résistance de nos capteurs. Avec KiCad, nous sommes en mesure de simuler des circuits électroniques avant de lancer les impressions de notre PCB. 
Nous avons donc conçu un circuit électronique qui nous permet de mesurer en sortie du circuit une valeur de tension proportionnelle à la valeur de la résistance mesurée. Nous pouvons donc remonter à la résistance du capteur. Pour celà, nous y avons placé les composants ci-dessous : 

écran OLED (affichage des valeurs de résistance et de tension mesurée)
module Bluetooth (connexion entre Android et le PCB via l’APK)
encodeur rotatoire (création d’un menu)
amplificateur transimpédance
La tension aux bornes du capteur étant très faible, du fait que la résistance du capteur soit très grande, il nous faut rajouter un amplificateur transimpédance afin que la tension de sortie du circuit électronique soit assez grande et donc mesurable.
Notons que le gain de cet amplificateur dépend du rapport R3/R2, nous avons choisi ce rapport comme étant égal à 100, mais nous pourrions choisir autre chose si nous voulons modifier la plage de résistance à mesurer.

Une fois les tests réalisés, nous avons lancé l’impression de notre circuit via une photolithographie extrême ultraviolette (sous masque), puis après utilisation d’une solution dite de développement, nous avons procédé au perçage permettant le soudage des composants (résistances, composants listés ci-dessus). 

# 4. Application Android
L’idée de ce projet étant de mesurer la variation de résistance de nos capteurs en fonction de la concentration de Graphite, pour plus de confort et de lisibilité de nos mesures, nous avons réalisé une Application Android via le logiciel MIT App Inventor : http://ai2.appinventor.mit.edu . 
Celle-ci assure la connexion Bluetooth avec notre Shield, affiche la valeur de la tension et de la résistance mesurée en temps réel et trace également l’évolution de la résistance du capteur mesuré en fonction du temps. 

Vous pourrez trouver le code à insérer sur le site internet de MIT App Inventor dans le dossier “APK”.

# 5. Résultats, Datasheet

Nous avons créé plusieurs capteurs, en les "coloriant" avec divers types de crayons à papier (HB,B,...). Chaque capteur possède, avec le type de crayon en question, sa propre résistance avant et pendant la déformation. Nous avons pu avoir des résultats sur les crayons à papier B et HB.

Nous présentons sur le fichier “curve.png” 2 courbes présentant la variation de la résistance du capteur en fonction de sa déformation pour un capteur avec un graphite B et un capteur avec un graphite HB.

Nous observons une petite tendance, les capteurs de type “HB” ont une résistance qui évoluent plus rapidement avec la déformation que les capteurs de type “B”.
Nous avons comparé cette tendance aux mêmes courbes réalisées dans l’article de recherche “Pencil_Drawn_Strain_Gauges” par un groupe de chercheurs, et nous avons observé cette même tendance pour les capteurs de type “B” et les capteurs de type “HB”.

Nous présentons les caractéristiques du capteur ainsi que du PCB sur la datasheet, que nous avons appelé “datasheet_Sensor” dans le dossier Github.

# 6. Conclusion et Pistes d'amélioration

Après avoir finalisé les tests de notre capteur, nous avons remarqué quelques pistes d’amélioration.

Tout d’abord, il nous faudrait refaire un PCB avec un meilleur soudage pour que l’utilisation de l’encodeur rotatoire ne soit pas responsable d’un court circuit. 

Par ailleurs, le problème majeur de notre capteur est qu’il est à usage unique, car trop fragile. A chaque fois que nous testons un capteur, nous déformons sa résistance de base de manière irréversible. Il faudrait donc dessiner le graphite sur un matériau  qui peut se déformer de manière réversible, mais tout de même assez souple pour pouvoir le déformer.

De plus, nous avons constaté que le choix du gain de l'amplificateur transimpédance est très important pour nos données. Nous avons fait le choix de poser R3/R2 = 100, avec R3 = 100 kOhms, et R2 = 1 kOhm. En réalité, si nous modifions ce gain, nous pouvons observer des plages de résistance différentes. Nous avons observé une tendance expérimentale, plus la résistance est faible, plus la modification de résistance due à la courbure est observable. Ainsi, nous avons pensé à la possibilité de modifier R2 afin de modifier la plage de valeur de la résistance du capteur.
Les résistances que nous avons utilisé sont des résistances ¼ de Watt, il faudra donc faire attention à ne pas prendre des résistances trop faibles afin de ne pas les surchauffer. Nous proposons sur le tableau “different_choices_of_resistor” 4 valeurs différentes de résistance choisies pour R2, avec la valeur minimale du capteur que l’on pourrait mesurer, ainsi que la tension maximale que l’on peut lui appliquer.

La tension que voit la résistance R2 (100 Ohms) dans notre cas est de 5V, car c’est la valeur de tension d’entrée de notre circuit. Cette valeur est la même que la tension maximale que la résistance peut supporter. Donc nous nous sommes dit qu’il s’agirait sûrement de la meilleure valeur de R2 possible pour notre dispositif. En soudant une résistance de 500 Ohms pour R2, notre dispositif se verrait davantage optimisé.

Mais il faut retenir que le choix de la résistance aurait un impact sur la plage de valeurs de résistance que l’on peut mesurer avec notre dispositif.

# 7. Contact

Etudiant en 4ème année du Génie Physique de l'INSA de Toulouse
**Arthur Goualou** : goualou.etud@insa-toulouse.fr
**Hugo Cortes** : hcortes@etud.insa-toulouse.fr