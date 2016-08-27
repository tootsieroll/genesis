$(document).ready ->
  $(":root").css("font-size", ($(window).width() * 100) / 1920 + '%');

$(window).resize ->
  $(":root").css("font-size", ($(window).width() * 100) / 1920 + '%');

