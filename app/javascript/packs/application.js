/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


import $ from 'jquery'
global.$ = $;
global.jQuery = $;

import Rails from 'rails-ujs';
Rails.start();
global.Rails = Rails;

import Turbolinks from 'turbolinks';
Turbolinks.start();

import 'bootstrap'

import Tone from 'tone'
global.Tone = Tone;

require.context('../stylesheets/', true, /^\.\/[^_].*\.(css|scss|sass)$/i);
require.context('../images/', true, /\.(gif|jpg|png|svg)$/i);
