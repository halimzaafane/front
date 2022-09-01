<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_ALGORITHME" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nom EST_DU_TYPE CHAINE" code="1#CHAINE#nom"/>
        <item algoitem="prenom EST_DU_TYPE CHAINE" code="1#CHAINE#prenom"/>
        <item algoitem="personne EST_DU_TYPE CHAINE" code="1#CHAINE#personne"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//initialisation des variables" code="19#initialisation des variables"/>
        <item algoitem="nom PREND_LA_VALEUR &quot;&quot;" code="5#nom#&quot;&quot;#pasliste"/>
        <item algoitem="prenom PREND_LA_VALEUR &quot;&quot;" code="5#prenom#&quot;&quot;#pasliste"/>
        <item algoitem="personne PREND_LA_VALEUR &quot;&quot;" code="5#personne#&quot;&quot;#pasliste"/>
        <item algoitem="//lecture des variables" code="19#lecture des variables"/>
        <item algoitem="AFFICHER &quot;entrer votre nom: &quot;" code="4#entrer votre nom: #0"/>
        <item algoitem="LIRE nom" code="2#nom#pasliste"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;entrer votre prenom: &quot;" code="4#entrer votre prenom: #0"/>
        <item algoitem="LIRE prenom" code="2#prenom#pasliste"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="//concatenation des deux chaines" code="19#concatenation des deux chaines"/>
        <item algoitem="personne PREND_LA_VALEUR prenom+&quot; &quot; +nom" code="5#personne#prenom+&quot; &quot; +nom#pasliste"/>
        <item algoitem="//affichage de la variable personne" code="19#affichage de la variable personne"/>
        <item algoitem="AFFICHER &quot;vous vous appelez: &quot;" code="4#vous vous appelez: #1"/>
        <item algoitem="AFFICHER personne" code="3#personne#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
