/*let text = ["The rain in SPAIN stays mainly in the plain"];
console.log(typeof text);
let result = text.match(/ain/g);
console.log(typeof text);
console.log(typeof result);
let ary = [result]
document.write(ary);
console.log(ary);
R.countBy(r=> r)(ary)*/
 
let chaine = "Hello world , welcome to the universe.";
let reg = new RegExp("(o)", "g");
let res = chaine.match(/o/g);
//document.write(`Chaîne d'origine : ${chaine} <br/>`);
//document.write("Chaîne traitée : " + chaine.replace(reg, "<span style='text-decoration: underline'>$1</span>") +
 //   "<br>"
//);
document.getElementById("origin").innerHTML = `Chaîne d'origine : ${chaine} <br/>`;
document.getElementById("occ").innerHTML = res
document.getElementById("myString").innerHTML = "Chaîne traitée : " + chaine.replace(reg, "<span style='text-decoration: underline'>$1</span>") + "<br>";
