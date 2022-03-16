// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import 'bootstrap'
Rails.start()
Turbolinks.start()
ActiveStorage.start()
require('channels')
require('jquery')


function paintIt(element, backgroundColor, textColor) {
  element.style.backgroundColor = backgroundColor
  if (textColor) {
    element.style.color = textColor
  }
}

window.addEventListener("load", () => {
  const links = document.querySelectorAll("a[data-background-color]")
  links.forEach((element) => {
    element.addEventListener("click", (event) => {
      event.preventDefault()

      const { backgroundColor, textColor } = element.dataset
      paintIt(element, backgroundColor, textColor)
    })
  })
})
