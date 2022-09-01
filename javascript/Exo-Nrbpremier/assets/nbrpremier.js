var input = new Number;
// estPrem = new Boolean(true);
function testerNbr() {
    input = Number(document.form.user.value);
    estPrem = true;

    for (i = 2; i < input; i++) {
        if (input % i == 0) estPrem = false
        }
        

    document.form.result.value = estPrem;
    if(estPrem === true) {
        document.getElementById("reponse").innerHTML = `Le nombre ${input} est un nombre Premier`;
    } else {
        document.getElementById("reponse").innerHTML = `Le nombre ${input} n'est pas un nombre Premier`;
    }

}  
        

