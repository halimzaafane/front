// Je test les RegExp
/*let prenom = 'gael';
let regExp = new RegExp('b')
console.log(regExp.test(prenom));*/
console.log(regExp.test(prenom))

let form = document.querySelector("#loginForm");

//Ecouter la modification de l'email
form.email.addEventListener("change", function () {
  validEmail(this);
});

//Ecouter la modification du password
form.password.addEventListener("change", function () {
  validPassword(this);
});

//Ecouter la soumission du formulaire
form.addEventListener("submit", function (e) {
  e.preventDefault();
<<<<<<< Updated upstream
  if (validEmail(form.email) && validPassword(form.password)) {
    form.submit();
  }
});
=======
  if (validEmail(form.email) && validPassword(form.password)){
    form.submit();
  }
  else{

  }
  validPassword(this);
  });
>>>>>>> Stashed changes

//****************** Validaton Email ****************
const validEmail = function (inputtxggkEmail) {
  //Creation de la regExp pour validation de l'email
  let emailRegex = new RegExp(
    "^[a-zA-Z0-9,-_]+[@]{1}[a-zA-Z0-9,-_]+[.]{1}[a-z]{2,10}$",
    "g"
  );

  //Récupération de balise small
  let small = inputEmail.nextElementSibling;

  //on test l'expression régulière
  if (emailRegex.test(inputEmail.value)) {
    small.innerHTML = "Adresse Valide";
    small.classList.remove("text-danger");
    small.classList.add("text-success");
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
    return true;
  } else {
    small.innerHTML = "Adresse Invalide";
    small.classList.remove("text-success");
    small.classList.add("text-danger");
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
    return false;
  }
};

//*****************Validation du password**************
const validPassword = function (inputPassword) {
  let msg;
  let valid = false;
  //Au moins 3 caractères dans le mot de passe
  if (inputPassword.value.length < 3) {
    msg = "Le mot de passe doit contenir au moins 3 caractères";
  }
  //Au moins 1 maj
  else if (!/[A-Z]/.test(inputPassword.value)) {
    msg = "Le mot de passe doit contenir une majuscule";
  }
  //Au moins 1 min
  else if (!/[a-z]/.test(inputPassword.value)) {
    msg = "Le mot de passe doit contenir une minuscule";
  }
  //Au moins 1 chiffre
  else if (!/[0-9]/.test(inputPassword.value)) {
    msg = "Le mot de passe doit contenir au moins un chiffre";
  }
  //Mot de passe valide
  else {
    msg = "Le mot de passe est valide";
    valid = true;
  }
<<<<<<< Updated upstream
  //Affichage
  //Récupération de balise small
  let small = inputPassword.nextElementSibling;
  //on test l'expression régulière
  if (valid) {
    small.innerHTML = "Mot de passe valide";
    small.classList.remove("text-danger");
    small.classList.add("text-success");
  } else {
    small.innerHTML = msg;
    small.classList.remove("text-success");
    small.classList.add("text-danger");
  }
};
=======

//Affichage
//Récupération de balise small
let small = inputPassword.nextElementSibling;

//on test l'expression régulière
if (valid) {
  small.innerHTML = "Mot de passe valide";
  small.classList.remove("text-danger");
  small.classList.add("text-success");
  return true;
}
 else {
  small.innerHTML = msg;
  small.classList.remove("text-success");
  small.classList.add("text-danger");
  return false;
}
}

>>>>>>> Stashed changes
