let nbr = 0 /* initialisation de la variable */
function carre() {
    let nbr = document.getElementById("nombre").value;
    let resultat = nbr ** 2;
    console.log(resultat);
    document.getElementById("resultat").innerHTML = resultat ;
}



