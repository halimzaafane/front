// NAVBAR
let lastScrollTop = 0;
navbar = document.getElementById('navbar');

window.addEventListener('scroll', function() {
    const scrollTop = window.pageTOffset ||
    this.document.documentElement.scrollTop;

    if (scrollTop > lastScrollTop) {
        navbar.style.top = "-50px";
    }else{
        navbar.style.top="0";
    }
    lastScrollTop = scrollTop;
});

// TYPED
var typed = new Typed(".typed", {
  strings: [
    "Bonjour à toutes et à tous, je me présente je m'apelle Halim",
    "Aprés une carrière de 20 ans en tant que Menuisier Agenceur, j'ai décidé de me lancer à fond dans l'apprentissage du code, depuis le mois de mai 2022 j'ai intégré la formation de Web Dév et Dév d'Application à l'Afpa où j'apprend différents langages Front et Back End (tels que CSS, Javascript, PHP ...) afin de devenir le plus rapidement possible développeur.Plus qu'un avenir professionnel, je me suis découvert une passion, celle de coder. ",
  ],
  typeSpeed: 35,
});

// COMPTEUR LIVE
let compteur = 0; 

$(window).scroll(function() {

  const top = $('.counter').offset().top - window.innerHeight;

  if (compteur == 0 && $(window).scrollTop() > top) {
    $('.counter-value').each(function() {
      let $this = $(this),
      countTo = $this.attr('data-count');
      $({
        contNum : $this.text()
      }).animate({
        countNum : countTo
      }, 
      {
        duration: 10000,
        easing: 'swing',
        step: function() {
          $this.text(Math.floor(this.countNum));
        },
        complete: function(){
          $this.text(this.countNum);
        }
      });
    });
    compteur = 1;
  }
})

// AOS
AOS.init();



// https://youtu.be/CkbNCFPtNzk?t=4662