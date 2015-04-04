$(document).ready(function(){
  // Init Scroll Magic
  var controller = new ScrollMagic.Controller({globalSceneOptions: {duration: 10000, offset: 500}});
  new ScrollMagic.Scene({triggerElement: "section.first"})
    .setClassToggle("#header", "scrolled")
    .addTo(controller);

  new WOW().init();
});
