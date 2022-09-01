
let menu = prompt("opération");
menu = parseInt(menu);
let depot = 500;

let solde = 1000;
switch (menu) {
    case 1:
        let retrait = prompt("retrait");
        console.log("1: Retrait ");
        document.write("1: Retrait ");
        document.write("<br\>");
        //console.log(retrait);
        document.write(solde - retrait);
        //solde = solde - retrait;
        break;
    case 2: 
        console.log(solde);
        console.log("2: Solde");
        document.write("2: Solde");
        document.write("<br\>");
        document.write(solde - retrait);
        break;

    case 3:
        console.log("3: Dépot");
        document.write("3: Dépot");
        document.write("<br\>");
        document.write((solde - retrait) + depot);
        break;
    default: "Quitter";

}