<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER nbalea" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbalea EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbalea"/>
        <item algoitem="compteur EST_DU_TYPE NOMBRE" code="1#NOMBRE#compteur"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR compteur ALLANT_DE 1 A 5" code="12#compteur#1#5">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="nbalea PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,10)" code="5#nbalea#ALGOBOX_ALEA_ENT(1,10)#pasliste"/>
            <item algoitem="AFFICHER nbalea" code="3#nbalea#1#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
