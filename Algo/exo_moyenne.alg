<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" arrondiAuto="vrai" totalAffichages="1000" totalBoucles="5000000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#listedenombres" algoitem="listedenombres EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#compteur" algoitem="compteur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyenne" algoitem="moyenne EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="12#compteur#1#5" algoitem="POUR compteur ALLANT_DE 1 A 5">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#listedenombres#compteur" algoitem="LIRE listedenombres[compteur]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#moyenne#ALGOBOX_MOYENNE(listedenombres,1,5)#pasliste" algoitem="moyenne PREND_LA_VALEUR ALGOBOX_MOYENNE(listedenombres,1,5)"/>
        <item code="6#moyenne&lt;10" algoitem="SI (moyenne&lt;10) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Votre moyenne est de: #0" algoitem="AFFICHER &quot;Votre moyenne est de: &quot;"/>
            <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
            <item code="4#Vous etes recalé.#1" algoitem="AFFICHER &quot;Vous etes recalé.&quot;"/>
            <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#moyenne > 10  ET moyenne&lt;12" algoitem="SI (moyenne > 10  ET moyenne&lt;12) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Votre moyenne est de: #0" algoitem="AFFICHER &quot;Votre moyenne est de: &quot;"/>
            <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
            <item code="4#Mention assez bien.#1" algoitem="AFFICHER &quot;Mention assez bien.&quot;"/>
            <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#moyenne >12 ET moyenne &lt; 15" algoitem="SI (moyenne >12 ET moyenne &lt; 15) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Votre moyenne est de: #0" algoitem="AFFICHER &quot;Votre moyenne est de: &quot;"/>
            <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
            <item code="4#Mention bien.#1" algoitem="AFFICHER &quot;Mention bien.&quot;"/>
            <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#moyenne > 15 ET moyenne &lt; 18 " algoitem="SI (moyenne > 15 ET moyenne &lt; 18 ) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Votre moyenne et de: #0" algoitem="AFFICHER &quot;Votre moyenne et de: &quot;"/>
            <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
            <item code="4#Mention très bien.#1" algoitem="AFFICHER &quot;Mention très bien.&quot;"/>
            <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#moyenne > 18" algoitem="SI (moyenne > 18) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Votre moyenne est de: #0" algoitem="AFFICHER &quot;Votre moyenne est de: &quot;"/>
            <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
            <item code="4#Mention Excellent !!!#1" algoitem="AFFICHER &quot;Mention Excellent !!!&quot;"/>
            <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
