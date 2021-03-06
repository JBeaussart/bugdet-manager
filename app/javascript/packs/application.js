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

// chartjs
require("chartkick")
require("chart.js")

// Custom js
require("custom/navbar_scroll")
require("custom/accounts/show/btn_see_details")

import "controllers"
import "bootstrap"
import { navbarScroll } from "../custom/navbar_scroll"
import { btnSeeMore } from '../custom/accounts/show/btn_see_details'



document.addEventListener('turbolinks:load', () => {
  navbarScroll();
  btnSeeMore();
})