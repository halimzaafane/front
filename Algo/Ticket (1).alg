<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_ALGORITHME" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#boisson" algoitem="boisson EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#plat" algoitem="plat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#totalHT" algoitem="totalHT EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#TVA" algoitem="TVA EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#totalTTC" algoitem="totalTTC EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stockplat" algoitem="stockplat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#quantite" algoitem="quantite EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#supplement" algoitem="supplement EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#boisson#pasliste" algoitem="LIRE boisson"/>
        <item code="3#quantite#0#pasliste" algoitem="AFFICHER quantite"/>
        <item code="5#boisson#boisson*quantite#pasliste" algoitem="boisson PREND_LA_VALEUR boisson*quantite"/>
        <item code="3#boisson#0#pasliste" algoitem="AFFICHER boisson"/>
        <item code="2#plat#pasliste" algoitem="LIRE plat"/>
        <item code="5#plat#plat*quantite#pasliste" algoitem="plat PREND_LA_VALEUR plat*quantite"/>
        <item code="2#quantite#pasliste" algoitem="LIRE quantite"/>
        <item code="3#plat#0#pasliste" algoitem="AFFICHER plat"/>
        <item code="2#quantite#pasliste" algoitem="LIRE quantite"/>
        <item code="2#supplement#pasliste" algoitem="LIRE supplement"/>
        <item code="5#supplement#supplement*quantite#pasliste" algoitem="supplement PREND_LA_VALEUR supplement*quantite"/>
        <item code="5#totalHT#boisson+plat+supplement#pasliste" algoitem="totalHT PREND_LA_VALEUR boisson+plat+supplement"/>
        <item code="3#totalHT#0#pasliste" algoitem="AFFICHER totalHT"/>
        <item code="2#TVA#pasliste" algoitem="LIRE TVA"/>
        <item code="5#totalTTC#totalHT*TVA#pasliste" algoitem="totalTTC PREND_LA_VALEUR totalHT*TVA"/>
        <item code="3#totalTTC#0#pasliste" algoitem="AFFICHER totalTTC"/>
        <item code="5#stockplat#4#pasliste" algoitem="stockplat PREND_LA_VALEUR 4"/>
        <item code="6#quantité>stockplat" algoitem="SI (quantité>stockplat) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#pas assez de stock , il reste 4 plats. #1" algoitem="AFFICHER &quot;pas assez de stock , il reste 4 plats. &quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
