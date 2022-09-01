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
        <item algoitem="chaine2 EST_DU_TYPE CHAINE" code="1#CHAINE#chaine2"/>
        <item algoitem="chaine1 EST_DU_TYPE CHAINE" code="1#CHAINE#chaine1"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//lecture des 2 chaines" code="19#lecture des 2 chaines"/>
        <item algoitem="AFFICHER &quot;entrez une premiere chaine&quot;" code="4#entrez une premiere chaine#0"/>
        <item algoitem="LIRE chaine1" code="2#chaine1#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez une deuxieme chaine&quot;" code="4#entrez une deuxieme chaine#0"/>
        <item algoitem="LIRE chaine2" code="2#chaine2#pasliste"/>
        <item algoitem="//comparaison des deux chaines" code="19#comparaison des deux chaines"/>
        <item algoitem="SI (chaine1.length>chaine2.length) ALORS" code="6#chaine1.length>chaine2.length">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;la premiere chaine est la plus longue&quot;" code="4#la premiere chaine est la plus longue#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (chaine2.length>chaine1.length) ALORS" code="6#chaine2.length>chaine1.length">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;la deuxieme chaine est la plus longue&quot;" code="4#la deuxieme chaine est la plus longue#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER &quot;les deux chaines sont de meme longueur&quot;" code="4#les deux chaines sont de meme longueur#0"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
