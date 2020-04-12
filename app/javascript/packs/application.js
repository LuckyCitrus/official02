// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import 'bootstrap'
import flatpickr from "flatpickr"
import "cocoon";

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("chartkick")
require("chart.js")
require('jquery')

require("flatpickr/dist/flatpickr.css")
require("flatpickr/dist/themes/airbnb.css");

//Webpacker ActiveStorage- Kiet
import ActiveStorageDragAndDrop from 'active_storage_drag_and_drop'
ActiveStorageDragAndDrop.start();

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener("turbolinks:load", () => {
    flatpickr("[data-behavior='flatpickr']", {
        altInput: true,
        altFormat: "l, F j, Y",
        allowInput: true
    })
}); 

//Enabling breaks destroy methods
/*$('document').on 'click', '.submit-btn', () => {
    $('f').submit()
};*/

//$(function () {
document.addEventListener("turbolinks:load", function () {
    var $elem = $('#content');

    $('#nav_up').fadeIn('slow');
    $('#nav_down').fadeIn('slow');

    $(window).bind('scrollstart', function () {
        $('#nav_up,#nav_down').stop().animate({
            'opacity': '0.4'
        });
    });

    $(window).bind('scrollstop', function () {
        $('#nav_up,#nav_down').stop().animate({
            'opacity': '1'
        });
    });

    $('#nav_down').click(
        function (e) {
            $('html, body').animate({
                scrollTop: $elem.height()
            }, 800);
        }
    );
    
    $('#nav_up').click(
        function (e) {
            $('html, body').animate({
                scrollTop: '0px'
            }, 800);
        }
    );
});

/*document.addEventListener("turbolinks:load", function () {
    const links = $('.navbar ul li a');
    $.each(links, function (index, link) {
        if (link.href == document.URL) {
            $(this).addClass('active');
        }
    });
});*/
