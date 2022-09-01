let nn = new Number;

function fibonacci(nn) {
    nn=Number(document.SuiteDeFibo.nbr.value);
    var n1 = 0;
    var n2 = 1;
    var somme = 0;
  
    for(let i = 2; i <= nn; i++){
       //somme des deux derniers nombres
       somme = n1 + n2; 
 
       //assigner la dernière valeur à la première
       n1 = n2; 
 
       //attribuer la somme au dernier
       n2 = somme; 
    }
  
    return nn ? n2 : n1;
 }
 
 document.write("Le resultat est "+ fibonacci(nn));