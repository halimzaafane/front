let student = {
  nom: "ZAAFANE",
  prenom: "halim",
  age: "42",
  genre: "Masculin",
  niveau: "débutant",

  fullname: function () {
      return (
          this.nom +
          " " +
          this.prenom +
          " " +
          this.age +
          " " +
          this.genre +
          " " +
          this.niveau
          );
        },
    };
    console.log(student.fullname());
document.getElementById("demo").innerHTML = `Je m'appelle ${student.nom} ${student.prenom} j'ai ${student.age} ans, je suis du genre ${student.genre} et je suis ${student.niveau} en tant que developpeur.`;
 document.getElementById("demo1").innerHTML = student.fullname();