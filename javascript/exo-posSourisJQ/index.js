$(document).ready(function () {
  $("body").mousemove(function (e) {
    //let coordonnéesPage = "(" + e.pageX + "," + e.pageY + ")";

    let coordonnéesPage = `${e.pageX} , ${e.pageY}`;

    let posX = "(" + e.pageX + ")";

    let posY = "(" + e.pageY + ")";

    $("span").text(coordonnéesPage);

    $("#posX").text(posX);

    $("#posY").text(posY);

    console.log(coordonnéesPage);
  });
});
