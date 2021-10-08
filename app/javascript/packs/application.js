// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails, { $ } from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// Adding the Bootstrap Theme to the project
import "bootstrap"
import "../stylesheets/application"
import "../stylesheets/dashboard.css"
//import "../vendor-js/dashboard.js"

import JQuery from "jquery"
Window.$ = Window.JQuery = JQuery;

Rails.start()
Turbolinks.start()
ActiveStorage.start()

//= require jquery
//= require popper
//= require turbolinks
//= require bootstrap
//= require_tree.