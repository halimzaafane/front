<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; m²&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#rayon" algoitem="rayon EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbpi" algoitem="nbpi EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#aire" algoitem="aire EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#rayon#pasliste" algoitem="LIRE rayon"/>
        <item code="5#nbpi#3.14#pasliste" algoitem="nbpi PREND_LA_VALEUR 3.14"/>
        <item code="5#aire#nbpi*(rayon*rayon)#pasliste" algoitem="aire PREND_LA_VALEUR nbpi*(rayon*rayon)"/>
        <item code="4#la superficie du cercle est de : #0" algoitem="AFFICHER &quot;la superficie du cercle est de : &quot;"/>
        <item code="3#aire#0#pasliste" algoitem="AFFICHER aire"/>
        <item code="4# m²#0" algoitem="AFFICHER &quot; m²&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
