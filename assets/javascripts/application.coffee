$(document).ready ->
  $(":root").css "font-size", ($(window).width() * 100) / 1920 + '%'
  $(".masonry-grid").masonry
    itemSelector: '.masonry-col'
  $(".b-text").css "height", $(window).height() - $(".l-header").height()
  $(".b-text").mCustomScrollbar
    scrollbarPosition: "outside"


$(window).resize ->
  $(":root").css "font-size", ($(window).width() * 100) / 1920 + '%'
  $(".b-text").css "height", $(window).height() - $(".l-header").height()

