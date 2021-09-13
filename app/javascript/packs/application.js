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


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { changeClass } from '../components/initChangeClass';
import { initBGCheckbox } from "../components/initChangeBG";
import { initChangeButton } from "../components/initChangeButton";
import { initUploadImage } from "../components/initUploadImage";
import { initAddPet } from "../components/initAddPet";
import { changeField } from "../components/formBreedCollection";
import { initDragAndDrop } from "../components/initDragAndDrop";
import { initSelect2 } from "../components/initSelect2";


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  changeClass();
  initBGCheckbox();
  initChangeButton();
  initUploadImage();
  initAddPet();
  changeField();
  initDragAndDrop();
  initSelect2();
});
