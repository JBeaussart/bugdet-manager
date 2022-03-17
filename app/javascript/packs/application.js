// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"

// details btn account show
const button = document.querySelector('.amount_month_tags_details')
const amounts = document.querySelector('.amount_month_tags')

button.addEventListener('click', () => {
  if (amounts.style.display === 'none') {
    amounts.style.display = 'block';
    button.innerHTML = 'Voir moins'
  } else {
    amounts.style.display = 'none'
    button.innerHTML = 'Voir le detail'
  }
})

// navbar animating
window.addEventListener("scroll", function () {
  const navbar = document.querySelector(".navbar-lewagon");
  navbar.classList.toggle("sticky", window.scrollY > 50);
});

// chartjs
require("chartkick")
require("chart.js")