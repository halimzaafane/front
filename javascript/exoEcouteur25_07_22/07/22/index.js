//mes varibles
let bouton = document.getElementById('myButton');

// mes ecouteurs
bouton.addEventListener('click',myFunction);


// ma fonction
    function myFunction() {
    let nom = document.getElementById('nom').value;
    let prénom = document.getElementById('prenom').value;
    let result = document.getElementById('resultat');
    let date = new Date();
    let dateLocale = date.toLocaleString('fr-FR',{
        weekday: 'long',
        year: 'numeric',
        month: 'long',
        day:'numeric',
        hour: 'numeric',
        minute: 'numeric',
        second: 'numeric'
    })

result.innerHTML = `Je m'appel ${nom} ${prénom} et nous sommes le ${dateLocale} `;
}
/*function createItem() {
    let item = document.getElementById("cree").value
    let myJSON = JSON.stringify(item);
  localStorage.setItem("myItem", "item" );
}

function readValue() {
  var x = localStorage.getItem("myItem");
  document.getElementById("demo").innerHTML = x;
}*/
