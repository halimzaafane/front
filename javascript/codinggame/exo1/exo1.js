//document.getElementById('titre').textContent = "Rick Astley - Never Gonna Give You Up";
document.body.firstElementChild.innerHTML = "Rick Astley - Never Gonna Give You Up";
const couplets = document.getElementsByClassName("couplet");
for (let i = 0; i < couplets.length; i++) {
    // faire le if ...

    // suppression du texte
    couplets[i].removeChild(couplets[i].firstChild);
    // supression de la balise br
 couplets[i].removeChild(couplets[i].firstElementChild);
}

var coupRef = [document.getElementsByClassName("refrain").value];
console.log(coupRef);
var uniqueArr = [...new Set(coupRef)];

/*const coupRefrain = document.getElementsByClassName("couplet refrain");
for (let x = 0; x < coupRefrain.length; x++) {
    const coupRefrainChildren = coupRefrain[x].childNodes;
    const coupRefrainNumberChildren = Math.round(coupRefrainChildren.length / 2);
    for (let y = 0; y < coupRefrainNumberChildren; y += 2) {
        for (let i = 0; i < 2; i++) {
            coupRefrain[x].removeChild(coupRefrainChildren[y]);
        }
    }
}
*/
const erreur = document.getElementById("erreur");
erreur.remove("erreur");

const node = document.createElement("footer");
const textnode = document.createTextNode("© Copyright 2020 - Nom");
node.appendChild(textnode);
document.body.appendChild(node);