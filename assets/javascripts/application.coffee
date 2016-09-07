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

  $('#projects li .b-project__name').on 'click', (e) ->
    # e.preventDefault()
    parent = $(this).parent('li')
    tab = parent.data('tab')
    if parent.hasClass 'selected'
      parent.removeClass 'selected'
      $(tab).removeClass 'selected'
      $('.animated-title2').show()
      $('.b-projects-description').hide()
      return
    $('.animated-title2').hide()
    $('.b-projects-description').show()
    $('.b-projects-description .b-project__descr').removeClass('selected')
    $(tab).addClass('selected')
    parent.addClass('selected').siblings().removeClass('selected')

  maxLength = $('#slider-pages li').length
  nextPage = (page) ->
    $('#slider').removeClass 'b-ellipse-slider__ready'
    $('#slider-pages > li').removeClass 'active'
    $('#slider-images > div').removeClass 'active'
    $('#slider-controls a').removeClass 'hidden'
    $('#slider').attr 'data-active', page
    $('#slider-pages > li').eq(page - 1).addClass 'active'
    $('#slider-images > div').eq(page - 1).addClass 'active'
    $('#slider-controls a.prev').addClass('hidden') if page is 1
    $('#slider-controls a.next').addClass('hidden') if page is maxLength
    $(this).one 'webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', ->
      $('#slider').addClass 'b-ellipse-slider__ready'


  $('#slider-pages li').one 'webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', ->
    $('#slider').addClass 'b-ellipse-slider__ready b-ellipse-slider__loaded'
  $('#slider-pages li').on 'click', (e) ->
    idx = $(this).index()
    nextPage(idx+1)
  $('#slider-controls a').on 'click', (e) ->
    e.preventDefault()
    link = $(this)
    active = parseInt($('#slider').attr('data-active'))
    if link.hasClass('prev')
      return if active is 1
      nextPage(active - 1)
    if link.hasClass('next')
      return if active is maxLength
      nextPage(active + 1)




$(window).resize ->
  $(":root").css "font-size", ($(window).width() * 100) / 1920 + '%'
  $(".b-text").css "height", $(window).height() - $(".l-header").height()

