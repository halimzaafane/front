<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER lettre" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="chaine1 EST_DU_TYPE CHAINE" code="1#CHAINE#chaine1"/>
        <item algoitem="lettre EST_DU_TYPE CHAINE" code="1#CHAINE#lettre"/>
        <item algoitem="longueur EST_DU_TYPE NOMBRE" code="1#NOMBRE#longueur"/>
        <item algoitem="compteur EST_DU_TYPE NOMBRE" code="1#NOMBRE#compteur"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//lecture de la chaine" code="19#lecture de la chaine"/>
        <item algoitem="AFFICHER &quot;entrer une chaine&quot;" code="4#entrer une chaine#0"/>
        <item algoitem="LIRE chaine1" code="2#chaine1#pasliste"/>
        <item algoitem="//calcul de la longueur de la chaine" code="19#calcul de la longueur de la chaine"/>
        <item algoitem="longueur PREND_LA_VALEUR chaine1.length" code="5#longueur#chaine1.length#pasliste"/>
        <item algoitem="//parcour de la chaine lettre par lettre" code="19#parcour de la chaine lettre par lettre"/>
        <item algoitem="POUR compteur ALLANT_DE 0 A longueur-1" code="12#compteur#0#longueur-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="lettre PREND_LA_VALEUR chaine1.substr(compteur,1)" code="5#lettre#chaine1.substr(compteur,1)#pasliste"/>
            <item algoitem="AFFICHER lettre" code="3#lettre#0#pasliste"/>
            <item algoitem="lettre PREND_LA_VALEUR &quot;&quot;" code="5#lettre#&quot;&quot;#pasliste"/>
            <item algoitem="AFFICHER &quot; : &quot;" code="4# : #0"/>
            <item algoitem="lettre PREND_LA_VALEUR chaine1.charCodeAt(compteur)" code="5#lettre#chaine1.charCodeAt(compteur)#pasliste"/>
            <item algoitem="AFFICHER lettre" code="3#lettre#1#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
