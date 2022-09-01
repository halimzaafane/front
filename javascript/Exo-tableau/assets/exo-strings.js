let now = new Date();
let annee = now.getFullYear();
let mois  = ("0"+now.getMonth() + 1).slice(-2);
let jour  = ("0"+now.getDate()).slice(-2);
let datenew = ("Nous sommes le "+jour+"/"+mois+"/"+annee+"<br/>");
document.write(datenew);
console.log(datenew);
//datenew.toUpperCase();
document.write(datenew.toUpperCase());
console.log(datenew.toUpperCase());
//str.toLowerCase();
document.write(datenew.charAt(2));
console.log(datenew.charAt(2));
document.write("<br/>")
var options = {weekday: "long"}//, year: "numeric", month: "long", day: "2-digit"};
document.write(date.toLocaleDateString("fr-FR", options));
