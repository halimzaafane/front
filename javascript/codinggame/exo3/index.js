  $(document).ready(function(){
    $("#masquer-paroles").click(function(){
      $("p").toggle();
      
      $(document).ready(function(){
        $("#masquer_paroles").val("Afficher les paroles");
      });
    });
    $("#show").click(function(){
      $("p").show();
    });
  });