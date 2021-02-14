// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap'
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel';


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener("turbolinks:load", function() {
  $('.owl-carousel').owlCarousel({
    stagePadding: 50,
    loop: true,
    rtl:true,    
    autoPlay: 1000,
    margin:10,
    responsive:{
      0:{
        items:1
       },
      736:{
       items:3
       },
      1440:{
      items:3
      }
    }
  });
});

document.addEventListener("turbolinks:before-cache", function() {
  $('.owl-carousel').owlCarousel('destroy');
});