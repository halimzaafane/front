<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Vous avez lancé les dés: &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" epaisseurPoint="2" totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="de1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#de1"/>
        <item algoitem="de2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#de2"/>
        <item algoitem="total EST_DU_TYPE NOMBRE" code="1#NOMBRE#total"/>
        <item algoitem="compteur EST_DU_TYPE NOMBRE" code="1#NOMBRE#compteur"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//Boucle tant que" code="19#Boucle tant que"/>
        <item algoitem="TANT_QUE (total&lt;21) FAIRE" code="15#total&lt;21">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="de1 PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,6)" code="5#de1#ALGOBOX_ALEA_ENT(1,6)#pasliste"/>
            <item algoitem="de2 PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,6)" code="5#de2#ALGOBOX_ALEA_ENT(1,6)#pasliste"/>
            <item algoitem="total PREND_LA_VALEUR total+(de1+de2)" code="5#total#total+(de1+de2)#pasliste"/>
            <item algoitem="compteur PREND_LA_VALEUR compteur+1" code="5#compteur#compteur+1#pasliste"/>
            <item algoitem="AFFICHER de1" code="3#de1#0#pasliste"/>
            <item algoitem="AFFICHER &quot; &quot;" code="4# #0"/>
            <item algoitem="AFFICHER de2" code="3#de2#1#pasliste"/>
            <item algoitem="SI (total>21) ALORS" code="6#total>21">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;total: &quot;" code="4#total: #0"/>
                <item algoitem="AFFICHER total" code="3#total#1#pasliste"/>
                <item algoitem="total PREND_LA_VALEUR 0" code="5#total#0#pasliste"/>
                <item algoitem="AFFICHER &quot;__________________________________&quot;" code="4#__________________________________#1"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;total: &quot;" code="4#total: #0"/>
        <item algoitem="AFFICHER total" code="3#total#1#pasliste"/>
        <item algoitem="AFFICHER &quot;_________________________________&quot;" code="4#_________________________________#1"/>
        <item algoitem="AFFICHER &quot;Vous avez lancé les dés: &quot;" code="4#Vous avez lancé les dés: #0"/>
        <item algoitem="AFFICHER compteur" code="3#compteur#0#pasliste"/>
        <item algoitem="AFFICHER &quot; fois avant d'obtenir 21 &quot;" code="4# fois avant d'obtenir 21 #0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
