<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER resultat"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" totalBoucles="5000000" arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nombre1" algoitem="nombre1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nombre2" algoitem="nombre2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#resultat" algoitem="resultat EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#saisie des valeurs numériques" algoitem="//saisie des valeurs numériques"/>
        <item code="4#entrer un premier nombre#0" algoitem="AFFICHER &quot;entrer un premier nombre&quot;"/>
        <item code="2#nombre1#pasliste" algoitem="LIRE nombre1"/>
        <item code="4#entrer un deuxieme nombre#0" algoitem="AFFICHER &quot;entrer un deuxieme nombre&quot;"/>
        <item code="2#nombre2#pasliste" algoitem="LIRE nombre2"/>
        <item code="19#calcul de l addition" algoitem="//calcul de l addition"/>
        <item code="5#resultat#nombre1+nombre2#pasliste" algoitem="resultat PREND_LA_VALEUR nombre1+nombre2"/>
        <item code="19#affichage de l addition" algoitem="//affichage de l addition"/>
        <item code="3#nombre1#0#pasliste" algoitem="AFFICHER nombre1"/>
        <item code="4# + #0" algoitem="AFFICHER &quot; + &quot;"/>
        <item code="3#nombre2#0#pasliste" algoitem="AFFICHER nombre2"/>
        <item code="4# = #0" algoitem="AFFICHER &quot; = &quot;"/>
        <item code="3#resultat#0#pasliste" algoitem="AFFICHER resultat"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
