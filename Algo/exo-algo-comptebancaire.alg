<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="agio EST_DU_TYPE NOMBRE" texte="programme d'un compte bancaire."/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" epaisseurPoint="2" totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="solde EST_DU_TYPE NOMBRE" code="1#NOMBRE#solde"/>
        <item algoitem="credit EST_DU_TYPE NOMBRE" code="1#NOMBRE#credit"/>
        <item algoitem="retrait EST_DU_TYPE NOMBRE" code="1#NOMBRE#retrait"/>
        <item algoitem="debit EST_DU_TYPE NOMBRE" code="1#NOMBRE#debit"/>
        <item algoitem="interet EST_DU_TYPE NOMBRE" code="1#NOMBRE#interet"/>
        <item algoitem="agio EST_DU_TYPE NOMBRE" code="1#NOMBRE#agio"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="" code="103#commentaire"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
