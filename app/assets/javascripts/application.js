// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

function showHidehcr(){
var hcr = document.getElementById("hcr");
var w = hcr.offsetWidth;
hcr.opened ? movehcr(0, 30-w) : movehcr(20-w, 10); //ultima sentencia. desplaza a la izquierda
hcr.opened = !hcr.opened;
}
function movehcr(x0, xf){
var hcr = document.getElementById("hcr");
var dx = Math.abs(x0-xf) > 10 ? 7 : 1;
var dir = xf>x0 ? 1 : -1;
var x = x0 + dx * dir;
hcr.style.right = x.toString() + "px";
if(x0!=xf){setTimeout("movehcr("+x+", "+xf+")", 10);}
}


$(document).ready(function () {
    $('.content').hide();
    $('.content2').hide();
    $('.content3').hide();
    $('.content4').hide();
    $('.content5').hide();

    $('.slide').click(function () {
        var $this = $(this);
        $(this).siblings('.content').slideToggle(200, function () {});
    });
    $('.slide2').click(function () {
        var $this = $(this);
        $(this).siblings('.content2').slideToggle(200, function () {});
    });
    $('.slide3').click(function () {
        var $this = $(this);
        $(this).siblings('.content3').slideToggle(200, function () {});
    });
    $('.slide4').click(function () {
        var $this = $(this);
        $(this).siblings('.content4').slideToggle(200, function () {});
    });
    $('.slide5').click(function () {
        var $this = $(this);
        $(this).siblings('.content5').slideToggle(200, function () {});
    });


});
