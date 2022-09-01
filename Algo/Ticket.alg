<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="tva PREND_LA_VALEUR (perrier*0.1)+(salade*0.1)+(suppfrittes*0.1)" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#perrier" algoitem="perrier EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#salade" algoitem="salade EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#suppfrittes" algoitem="suppfrittes EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#total" algoitem="total EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prixht" algoitem="prixht EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tva" algoitem="tva EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#quantite" algoitem="quantite EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#perrier#3#pasliste" algoitem="perrier PREND_LA_VALEUR 3"/>
        <item code="5#salade#10#pasliste" algoitem="salade PREND_LA_VALEUR 10"/>
        <item code="5#suppfrittes#2.5#pasliste" algoitem="suppfrittes PREND_LA_VALEUR 2.5"/>
        <item code="5#total#perrier+salade+suppfrittes#pasliste" algoitem="total PREND_LA_VALEUR perrier+salade+suppfrittes"/>
        <item code="5#prixht#(perrier/1.1)+(salade/1.1)+(suppfrittes/1.1)#pasliste" algoitem="prixht PREND_LA_VALEUR (perrier/1.1)+(salade/1.1)+(suppfrittes/1.1)"/>
        <item code="5#tva#(perrier*0.1)+(salade*0.1)+(suppfrittes*0.1)#pasliste" algoitem="tva PREND_LA_VALEUR (perrier*0.1)+(salade*0.1)+(suppfrittes*0.1)"/>
        <item code="4#prix total : #0" algoitem="AFFICHER &quot;prix total : &quot;"/>
        <item code="3#total#1#pasliste" algoitem="AFFICHER total"/>
        <item code="4#prix ht  : #0" algoitem="AFFICHER &quot;prix ht  : &quot;"/>
        <item code="3#prixht#1#pasliste" algoitem="AFFICHER prixht"/>
        <item code="4#tva : #0" algoitem="AFFICHER &quot;tva : &quot;"/>
        <item code="3#tva#1#pasliste" algoitem="AFFICHER tva"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
