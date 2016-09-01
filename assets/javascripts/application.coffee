$(document).ready ->
  $(":root").css "font-size", ($(window).width() * 100) / 1920 + '%'
  $(".masonry-grid").masonry
    itemSelector: '.masonry-col'
  $(".b-text").css "height", $(window).height() - $(".l-header").height()
  $(".b-text").mCustomScrollbar
    scrollbarPosition: "outside"

  dirty = $('#text-block').html()
  clean = sanitizeHtml dirty,
    allowedTags: ['h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'blockquote', 'p', 'a', 'ul', 'ol', 'nl', 'li', 'strong', 'em', 'img', 'code', 'hr', 'div', 'script', 'noscript']
    transformTags:
      'table': 'p'
      'thead': 'p'
      'caption': 'p'
      'tbody': 'p'
      'tr': 'p'
      'th': 'p'
      'td': 'p'
    textFilter: (text) -> text.replace('&nbsp;', '')

  $('#text-block').html clean

$(window).resize ->
  $(":root").css "font-size", ($(window).width() * 100) / 1920 + '%'
  $(".b-text").css "height", $(window).height() - $(".l-header").height()

