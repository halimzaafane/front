<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="stop PREND_LA_VALEUR 6"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES">
        <item code="201#afficher_retrait#retrait" algoitem="FONCTION afficher_retrait(retrait)">
            <item code="202#declarationsvariablesfonction" algoitem="VARIABLES_FONCTION"/>
            <item code="203#debutfonction" algoitem="DEBUT_FONCTION"/>
            <item code="4#Combien desirez vous retirer ?#1" algoitem="AFFICHER &quot;Combien desirez vous retirer ?&quot;"/>
            <item code="2#retrait#pasliste" algoitem="LIRE retrait"/>
            <item code="5#debit#retrait#pasliste" algoitem="debit PREND_LA_VALEUR retrait"/>
            <item code="5#solde#solde-retrait#pasliste" algoitem="solde PREND_LA_VALEUR solde-retrait"/>
            <item code="4#Merci pour votre retrait de #0" algoitem="AFFICHER &quot;Merci pour votre retrait de &quot;"/>
            <item code="3#retrait#0#pasliste" algoitem="AFFICHER retrait"/>
            <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
            <item code="4#Votre solde est désormais de : #1" algoitem="AFFICHER &quot;Votre solde est désormais de : &quot;"/>
            <item code="3#solde#0#pasliste" algoitem="AFFICHER solde"/>
            <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
            <item code="204#finfonction" algoitem="FIN_FONCTION"/>
        </item>
        <item code="201#afficher_solde#solde" algoitem="FONCTION afficher_solde(solde)">
            <item code="202#declarationsvariablesfonction" algoitem="VARIABLES_FONCTION"/>
            <item code="203#debutfonction" algoitem="DEBUT_FONCTION"/>
            <item code="4#Votre solde actuelle est de : #1" algoitem="AFFICHER &quot;Votre solde actuelle est de : &quot;"/>
            <item code="3#solde#0#pasliste" algoitem="AFFICHER solde"/>
            <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
            <item code="204#finfonction" algoitem="FIN_FONCTION"/>
        </item>
    </item>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#solde" algoitem="solde EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#retrait" algoitem="retrait EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#choix" algoitem="choix EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#agio" algoitem="agio EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#crediter" algoitem="crediter EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#debit" algoitem="debit EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#interet" algoitem="interet EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stop" algoitem="stop EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#solde#1000#pasliste" algoitem="solde PREND_LA_VALEUR 1000"/>
        <item code="5#agio#0#pasliste" algoitem="agio PREND_LA_VALEUR 0"/>
        <item code="5#choix#-1#pasliste" algoitem="choix PREND_LA_VALEUR -1"/>
        <item code="5#crediter#0#pasliste" algoitem="crediter PREND_LA_VALEUR 0"/>
        <item code="5#debit#0#pasliste" algoitem="debit PREND_LA_VALEUR 0"/>
        <item code="5#interet#0#pasliste" algoitem="interet PREND_LA_VALEUR 0"/>
        <item code="5#stop#0#pasliste" algoitem="stop PREND_LA_VALEUR 0"/>
        <item code="15#choix!=6" algoitem="TANT_QUE (choix!=6) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#1 = Solde#1" algoitem="AFFICHER &quot;1 = Solde&quot;"/>
            <item code="4#2 = Retrait#1" algoitem="AFFICHER &quot;2 = Retrait&quot;"/>
            <item code="4#3 = Crediter#1" algoitem="AFFICHER &quot;3 = Crediter&quot;"/>
            <item code="4#4 = Debit#1" algoitem="AFFICHER &quot;4 = Debit&quot;"/>
            <item code="4#5 = Interet#1" algoitem="AFFICHER &quot;5 = Interet&quot;"/>
            <item code="4#6 = Retirer carte#1" algoitem="AFFICHER &quot;6 = Retirer carte&quot;"/>
            <item code="2#choix#pasliste" algoitem="LIRE choix"/>
            <item code="6#choix==1" algoitem="SI (choix==1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="206#afficher_solde(solde)" algoitem="APPELER_FONCTION afficher_solde(solde)"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==2" algoitem="SI (choix==2) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="206#afficher_retrait(retrait)" algoitem="APPELER_FONCTION afficher_retrait(retrait)"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#solde&lt;0" algoitem="SI (solde&lt;0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Attention vous avez dépasser votre solde debiteur, si vous ne rembourser pas dans la limite du temps convenu des AGIO vous seront prélevé a hauteur de 10%#1" algoitem="AFFICHER &quot;Attention vous avez dépasser votre solde debiteur, si vous ne rembourser pas dans la limite du temps convenu des AGIO vous seront prélevé a hauteur de 10%&quot;"/>
                <item code="4#Votre solde : #0" algoitem="AFFICHER &quot;Votre solde : &quot;"/>
                <item code="3#solde#0#pasliste" algoitem="AFFICHER solde"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="4#Prelevement AGIO : #1" algoitem="AFFICHER &quot;Prelevement AGIO : &quot;"/>
                <item code="5#agio#solde*0.1#pasliste" algoitem="agio PREND_LA_VALEUR solde*0.1"/>
                <item code="3#agio#0#pasliste" algoitem="AFFICHER agio"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==3" algoitem="SI (choix==3) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Veuillez inserer le montant a crediter : #1" algoitem="AFFICHER &quot;Veuillez inserer le montant a crediter : &quot;"/>
                <item code="2#crediter#pasliste" algoitem="LIRE crediter"/>
                <item code="4#Vous venez de crediter : #0" algoitem="AFFICHER &quot;Vous venez de crediter : &quot;"/>
                <item code="3#crediter#0#pasliste" algoitem="AFFICHER crediter"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="5#solde#solde+crediter#pasliste" algoitem="solde PREND_LA_VALEUR solde+crediter"/>
                <item code="4#Merci, votre solde actuelle est de : #1" algoitem="AFFICHER &quot;Merci, votre solde actuelle est de : &quot;"/>
                <item code="3#solde#0#pasliste" algoitem="AFFICHER solde"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==4" algoitem="SI (choix==4) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Votre débit est de : #1" algoitem="AFFICHER &quot;Votre débit est de : &quot;"/>
                <item code="3#debit#0#pasliste" algoitem="AFFICHER debit"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==5" algoitem="SI (choix==5) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Vos interets cette année sont de : #1" algoitem="AFFICHER &quot;Vos interets cette année sont de : &quot;"/>
                <item code="5#interet#solde*0.02#pasliste" algoitem="interet PREND_LA_VALEUR solde*0.02"/>
                <item code="3#interet#0#pasliste" algoitem="AFFICHER interet"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==6" algoitem="SI (choix==6) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Merci et bonne journée avec Jimmy's Bank#1" algoitem="AFFICHER &quot;Merci et bonne journée avec Jimmy's Bank&quot;"/>
                <item code="5#stop#6#pasliste" algoitem="stop PREND_LA_VALEUR 6"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="103#commentaire" algoitem=""/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
