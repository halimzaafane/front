<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="TANT_QUE (menu!=0) FAIRE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" arrondiAuto="vrai" totalAffichages="1000" totalBoucles="5000000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#cafe" algoitem="cafe EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#the" algoitem="the EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#chocolat" algoitem="chocolat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#argent" algoitem="argent EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#menu" algoitem="menu EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#credit" algoitem="credit EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#menu#-1#pasliste" algoitem="menu PREND_LA_VALEUR -1"/>
        <item code="5#cafe#1#pasliste" algoitem="cafe PREND_LA_VALEUR 1"/>
        <item code="5#the#2#pasliste" algoitem="the PREND_LA_VALEUR 2"/>
        <item code="5#chocolat#3#pasliste" algoitem="chocolat PREND_LA_VALEUR 3"/>
        <item code="5#credit#0#pasliste" algoitem="credit PREND_LA_VALEUR 0"/>
        <item code="15#menu!=0" algoitem="TANT_QUE (menu!=0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Bonjour, choisissez une boisson: #1" algoitem="AFFICHER &quot;Bonjour, choisissez une boisson: &quot;"/>
            <item code="4#1: Café #1" algoitem="AFFICHER &quot;1: Café &quot;"/>
            <item code="4#2: Thé #1" algoitem="AFFICHER &quot;2: Thé &quot;"/>
            <item code="4#3: Chocolat #1" algoitem="AFFICHER &quot;3: Chocolat &quot;"/>
            <item code="2#menu#pasliste" algoitem="LIRE menu"/>
            <item code="6#menu==1" algoitem="SI (menu==1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Veillez inserer: #0" algoitem="AFFICHER &quot;Veillez inserer: &quot;"/>
                <item code="3#cafe#0#pasliste" algoitem="AFFICHER cafe"/>
                <item code="4# €. #1" algoitem="AFFICHER &quot; €. &quot;"/>
                <item code="2#argent#pasliste" algoitem="LIRE argent"/>
                <item code="4#Vous avez inserez: #0" algoitem="AFFICHER &quot;Vous avez inserez: &quot;"/>
                <item code="3#argent#0#pasliste" algoitem="AFFICHER argent"/>
                <item code="4# €.#1" algoitem="AFFICHER &quot; €.&quot;"/>
                <item code="4#Votre nouveaux crédit est de : #0" algoitem="AFFICHER &quot;Votre nouveaux crédit est de : &quot;"/>
                <item code="5#credit#argent-cafe#pasliste" algoitem="credit PREND_LA_VALEUR argent-cafe"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €. #1" algoitem="AFFICHER &quot; €. &quot;"/>
                <item code="4#votre boisson est prète , bonne dégustation.#1" algoitem="AFFICHER &quot;votre boisson est prète , bonne dégustation.&quot;"/>
                <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#menu==2" algoitem="SI (menu==2) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Veillez inserer: #0" algoitem="AFFICHER &quot;Veillez inserer: &quot;"/>
                <item code="3#the#0#pasliste" algoitem="AFFICHER the"/>
                <item code="4# €. #1" algoitem="AFFICHER &quot; €. &quot;"/>
                <item code="2#argent#pasliste" algoitem="LIRE argent"/>
                <item code="4#Vous avez inserez: #0" algoitem="AFFICHER &quot;Vous avez inserez: &quot;"/>
                <item code="3#argent#0#pasliste" algoitem="AFFICHER argent"/>
                <item code="4# €.#1" algoitem="AFFICHER &quot; €.&quot;"/>
                <item code="5#credit#argent-the#pasliste" algoitem="credit PREND_LA_VALEUR argent-the"/>
                <item code="4#Votre nouveuax crédit est de: #0" algoitem="AFFICHER &quot;Votre nouveuax crédit est de: &quot;"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €. #1" algoitem="AFFICHER &quot; €. &quot;"/>
                <item code="4#votre boisson est prète , bonne dégustation.#1" algoitem="AFFICHER &quot;votre boisson est prète , bonne dégustation.&quot;"/>
                <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#menu==3" algoitem="SI (menu==3) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Veillez inserer: #0" algoitem="AFFICHER &quot;Veillez inserer: &quot;"/>
                <item code="3#chocolat#0#pasliste" algoitem="AFFICHER chocolat"/>
                <item code="4# €. #1" algoitem="AFFICHER &quot; €. &quot;"/>
                <item code="2#argent#pasliste" algoitem="LIRE argent"/>
                <item code="4#Vous avez inserez: #0" algoitem="AFFICHER &quot;Vous avez inserez: &quot;"/>
                <item code="3#argent#0#pasliste" algoitem="AFFICHER argent"/>
                <item code="4# €.#1" algoitem="AFFICHER &quot; €.&quot;"/>
                <item code="5#credit#argent-chocolat#pasliste" algoitem="credit PREND_LA_VALEUR argent-chocolat"/>
                <item code="4#Votre nouveaux crédit est de: #0" algoitem="AFFICHER &quot;Votre nouveaux crédit est de: &quot;"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €. #1" algoitem="AFFICHER &quot; €. &quot;"/>
                <item code="4#votre boisson est prète , bonne dégustation.#1" algoitem="AFFICHER &quot;votre boisson est prète , bonne dégustation.&quot;"/>
                <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
