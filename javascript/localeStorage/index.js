//solution simple
for (let i = 0; i< localStorage.length; i++) {
    let key = localStorage.key(i)
    console.log(key, localStorage.getItem(key))
}

//solution avancée
for (let key of Object.keys(localStorage)){
    console.log(key, localStorage.getItem(key))
}

//Storage event, exclusivement pour localStorage
window.onstorage = event => {
    console.log(event)
}
//exo w3schools
function createItem() {
  localStorage.setItem("mytime", '');
}

function readValue() {
  var x = localStorage.getItem("mytime");
  document.getElementById("demo").innerHTML = x;
}
