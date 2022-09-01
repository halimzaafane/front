<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot; €&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" nbDecimales="8" maxBoucle="500000" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES">
        <item code="201#liste#liste" algoitem="FONCTION liste(liste)">
            <item code="202#declarationsvariablesfonction" algoitem="VARIABLES_FONCTION"/>
            <item code="203#debutfonction" algoitem="DEBUT_FONCTION"/>
            <item code="4#1 = Café   1€#1" algoitem="AFFICHER &quot;1 = Café   1€&quot;"/>
            <item code="4#2 = chocolat   1€#1" algoitem="AFFICHER &quot;2 = chocolat   1€&quot;"/>
            <item code="4#3 = Jus d'orange   1€#1" algoitem="AFFICHER &quot;3 = Jus d'orange   1€&quot;"/>
            <item code="4#4 = Rendre monnaie#1" algoitem="AFFICHER &quot;4 = Rendre monnaie&quot;"/>
            <item code="4#5 = Stop#1" algoitem="AFFICHER &quot;5 = Stop&quot;"/>
            <item code="204#finfonction" algoitem="FIN_FONCTION"/>
        </item>
    </item>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#cafe" algoitem="cafe EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#jus" algoitem="jus EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#choix" algoitem="choix EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#chocolat" algoitem="chocolat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stockcafe" algoitem="stockcafe EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stockjus" algoitem="stockjus EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stockchocolat" algoitem="stockchocolat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#credit" algoitem="credit EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stop" algoitem="stop EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#retourmonnaie" algoitem="retourmonnaie EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#cafe#1#pasliste" algoitem="cafe PREND_LA_VALEUR 1"/>
        <item code="5#jus#1#pasliste" algoitem="jus PREND_LA_VALEUR 1"/>
        <item code="5#choix#-1#pasliste" algoitem="choix PREND_LA_VALEUR -1"/>
        <item code="5#chocolat#1#pasliste" algoitem="chocolat PREND_LA_VALEUR 1"/>
        <item code="5#stockcafe#2#pasliste" algoitem="stockcafe PREND_LA_VALEUR 2"/>
        <item code="5#stockchocolat#2#pasliste" algoitem="stockchocolat PREND_LA_VALEUR 2"/>
        <item code="5#stockjus#2#pasliste" algoitem="stockjus PREND_LA_VALEUR 2"/>
        <item code="5#credit#0#pasliste" algoitem="credit PREND_LA_VALEUR 0"/>
        <item code="4#Bonjour veuillez inserez votre monnaie et selectionner votre produit :#1" algoitem="AFFICHER &quot;Bonjour veuillez inserez votre monnaie et selectionner votre produit :&quot;"/>
        <item code="206#liste(liste)" algoitem="APPELER_FONCTION liste(liste)"/>
        <item code="4#Inserez votre monnaie :#1" algoitem="AFFICHER &quot;Inserez votre monnaie :&quot;"/>
        <item code="2#credit#pasliste" algoitem="LIRE credit"/>
        <item code="4#Votre credit est de : #0" algoitem="AFFICHER &quot;Votre credit est de : &quot;"/>
        <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
        <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
        <item code="4#Selectionnez votre produit : #1" algoitem="AFFICHER &quot;Selectionnez votre produit : &quot;"/>
        <item code="15#choix!=0" algoitem="TANT_QUE (choix!=0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="2#choix#pasliste" algoitem="LIRE choix"/>
            <item code="6#choix==1" algoitem="SI (choix==1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#credit#credit-cafe#pasliste" algoitem="credit PREND_LA_VALEUR credit-cafe"/>
                <item code="5#stockcafe#stockcafe-cafe#pasliste" algoitem="stockcafe PREND_LA_VALEUR stockcafe-cafe"/>
                <item code="4#Votre café est en cours de préparation...#1" algoitem="AFFICHER &quot;Votre café est en cours de préparation...&quot;"/>
                <item code="4#  #1" algoitem="AFFICHER &quot;  &quot;"/>
                <item code="4#Le stock de café est de : #0" algoitem="AFFICHER &quot;Le stock de café est de : &quot;"/>
                <item code="3#stockcafe#0#pasliste" algoitem="AFFICHER stockcafe"/>
                <item code="4# cafés disponible#1" algoitem="AFFICHER &quot; cafés disponible&quot;"/>
                <item code="4#   #1" algoitem="AFFICHER &quot;   &quot;"/>
                <item code="4#Votre café est pret, souhaitez vous autre chose ? #1" algoitem="AFFICHER &quot;Votre café est pret, souhaitez vous autre chose ? &quot;"/>
                <item code="4#  #1" algoitem="AFFICHER &quot;  &quot;"/>
                <item code="206#liste(liste)" algoitem="APPELER_FONCTION liste(liste)"/>
                <item code="4# #1" algoitem="AFFICHER &quot; &quot;"/>
                <item code="4#Votre crédit est de : #1" algoitem="AFFICHER &quot;Votre crédit est de : &quot;"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==2" algoitem="SI (choix==2) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#credit#credit-chocolat#pasliste" algoitem="credit PREND_LA_VALEUR credit-chocolat"/>
                <item code="5#stockchocolat#stockchocolat-chocolat#pasliste" algoitem="stockchocolat PREND_LA_VALEUR stockchocolat-chocolat"/>
                <item code="4#Votre chocolat est en cours de préparation...#1" algoitem="AFFICHER &quot;Votre chocolat est en cours de préparation...&quot;"/>
                <item code="4#  #1" algoitem="AFFICHER &quot;  &quot;"/>
                <item code="4#Le stock de chocolat est de : #0" algoitem="AFFICHER &quot;Le stock de chocolat est de : &quot;"/>
                <item code="3#stockchocolat#0#pasliste" algoitem="AFFICHER stockchocolat"/>
                <item code="4# chocolat disponible#1" algoitem="AFFICHER &quot; chocolat disponible&quot;"/>
                <item code="4#   #1" algoitem="AFFICHER &quot;   &quot;"/>
                <item code="4#Votre chocolat est pret, souhaitez vous autre chose ? #1" algoitem="AFFICHER &quot;Votre chocolat est pret, souhaitez vous autre chose ? &quot;"/>
                <item code="4#  #1" algoitem="AFFICHER &quot;  &quot;"/>
                <item code="206#liste(liste)" algoitem="APPELER_FONCTION liste(liste)"/>
                <item code="4#Votre crédit est de : #1" algoitem="AFFICHER &quot;Votre crédit est de : &quot;"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==3" algoitem="SI (choix==3) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#credit#credit-jus#pasliste" algoitem="credit PREND_LA_VALEUR credit-jus"/>
                <item code="5#stockjus#stockjus-jus#pasliste" algoitem="stockjus PREND_LA_VALEUR stockjus-jus"/>
                <item code="4#Votre jus d'orange est en cours de préparation...#1" algoitem="AFFICHER &quot;Votre jus d'orange est en cours de préparation...&quot;"/>
                <item code="4#  #1" algoitem="AFFICHER &quot;  &quot;"/>
                <item code="4#Le stock de jus d'orange est de : #0" algoitem="AFFICHER &quot;Le stock de jus d'orange est de : &quot;"/>
                <item code="3#stockjus#0#pasliste" algoitem="AFFICHER stockjus"/>
                <item code="4#jus d'orange disponible#1" algoitem="AFFICHER &quot;jus d'orange disponible&quot;"/>
                <item code="4#   #1" algoitem="AFFICHER &quot;   &quot;"/>
                <item code="4#Votre jus d'orange est pret, souhaitez vous autre chose ? #1" algoitem="AFFICHER &quot;Votre jus d'orange est pret, souhaitez vous autre chose ? &quot;"/>
                <item code="4#  #1" algoitem="AFFICHER &quot;  &quot;"/>
                <item code="206#liste(liste)" algoitem="APPELER_FONCTION liste(liste)"/>
                <item code="4#Votre crédit est de : #1" algoitem="AFFICHER &quot;Votre crédit est de : &quot;"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==4" algoitem="SI (choix==4) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#retourmonnaie#credit#pasliste" algoitem="retourmonnaie PREND_LA_VALEUR credit"/>
                <item code="5#credit#0#pasliste" algoitem="credit PREND_LA_VALEUR 0"/>
                <item code="4#Merci pour vos achats, veuillez recupérer votre monnaie : #0" algoitem="AFFICHER &quot;Merci pour vos achats, veuillez recupérer votre monnaie : &quot;"/>
                <item code="3#retourmonnaie#0#pasliste" algoitem="AFFICHER retourmonnaie"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="4#Votre crédit est de :#1" algoitem="AFFICHER &quot;Votre crédit est de :&quot;"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#choix==5" algoitem="SI (choix==5) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Merci et bonne journée a vous !#1" algoitem="AFFICHER &quot;Merci et bonne journée a vous !&quot;"/>
                <item code="5#choix#0#pasliste" algoitem="choix PREND_LA_VALEUR 0"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#credit&lt;1" algoitem="SI (credit&lt;1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="15#credit&lt;1" algoitem="TANT_QUE (credit&lt;1) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="4#Vous n'avez pas inseré votre monnaie, veuillez inserez une piece de monnaie avant de selectionner un produit : #1" algoitem="AFFICHER &quot;Vous n'avez pas inseré votre monnaie, veuillez inserez une piece de monnaie avant de selectionner un produit : &quot;"/>
                    <item code="2#credit#pasliste" algoitem="LIRE credit"/>
                    <item code="4#Votre credit est de : #0" algoitem="AFFICHER &quot;Votre credit est de : &quot;"/>
                    <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                    <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                    <item code="206#liste(liste)" algoitem="APPELER_FONCTION liste(liste)"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#stockcafe&lt;1" algoitem="SI (stockcafe&lt;1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Stock épuisé, veuillez récuperer votre monnaie.#1" algoitem="AFFICHER &quot;Stock épuisé, veuillez récuperer votre monnaie.&quot;"/>
                <item code="5#choix#0#pasliste" algoitem="choix PREND_LA_VALEUR 0"/>
                <item code="4#Monnaie rendu : #0" algoitem="AFFICHER &quot;Monnaie rendu : &quot;"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#stockjus&lt;1" algoitem="SI (stockjus&lt;1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Stock épuisé, veuillez récuperer votre monnaie.#1" algoitem="AFFICHER &quot;Stock épuisé, veuillez récuperer votre monnaie.&quot;"/>
                <item code="5#choix#0#pasliste" algoitem="choix PREND_LA_VALEUR 0"/>
                <item code="4#Monnaie rendu : #0" algoitem="AFFICHER &quot;Monnaie rendu : &quot;"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#stockchocolat&lt;1" algoitem="SI (stockchocolat&lt;1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Stock épuisé, veuillez récuperer votre monnaie.#1" algoitem="AFFICHER &quot;Stock épuisé, veuillez récuperer votre monnaie.&quot;"/>
                <item code="5#choix#0#pasliste" algoitem="choix PREND_LA_VALEUR 0"/>
                <item code="4#Monnaie rendu : #0" algoitem="AFFICHER &quot;Monnaie rendu : &quot;"/>
                <item code="3#credit#0#pasliste" algoitem="AFFICHER credit"/>
                <item code="4# €#1" algoitem="AFFICHER &quot; €&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
