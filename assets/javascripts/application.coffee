$(document).ready ->
  $(":root").css "font-size", ($(window).width() * 100) / 1920 + '%'

  q = 1920/1080
  c = $(window).width() / $(window).height()
  if c > q
    $(".l-content").css
      '-webkit-transform' : 'scale(' + q/c + ',' + q/c + ')'
      '-moz-transform'    : 'scale(' + q/c + ',' + q/c + ')'
      '-ms-transform'     : 'scale(' + q/c + ',' + q/c + ')'
      '-o-transform'      : 'scale(' + q/c + ',' + q/c + ')'
      'transform'         : 'scale(' + q/c + ',' + q/c + ')'
  else
    $(".l-content").css
      '-webkit-transform' : 'scale(1,1)'
      '-moz-transform'    : 'scale(1,1)'
      '-ms-transform'     : 'scale(1,1)'
      '-o-transform'      : 'scale(1,1)'
      'transform'         : 'scale(1,1)'

  $('body').addClass 'has-slider' if $('#slider').length

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

  $('#projects .b-project').on('mouseenter', (e) ->
    parent = $(this)
    tab = parent.data('tab')
    $('.animated-title2').addClass('hidden')
    $('.b-projects-description').show()
    $('.b-projects-description .b-project__descr').removeClass('selected')
    $(tab).addClass('selected')
    parent.addClass('selected').siblings().removeClass('selected')
  ).on 'mouseleave', (e) ->
    parent = $(this)
    tab = parent.data('tab')
    parent.removeClass 'selected'
    $(tab).removeClass 'selected'
    $('.animated-title2').removeClass('hidden')
    $('.b-projects-description').hide()


  maxLength = $('#slider-pages li').length
  isScrolled = false

  scrollTimeout = false
  timeout = undefined

  nextPage = (page) ->
    isScrolled = true
    $('#slider').removeClass 'b-ellipse-slider__ready'
    $('#slider-pages > li').removeClass 'active'
    $('#slider-images > div').removeClass 'active'
    $('#slider-controls a').removeClass 'hidden'
    $('#slider').attr 'data-active', page
    $('#slider-description').attr 'data-active', page
    $('#slider-pages > li').eq(page - 1).addClass 'active'
    $('#slider-images > div').eq(page - 1).addClass 'active'
    $('#slider-controls a.prev').addClass('hidden') if page is 1
    $('#slider-controls a.next').addClass('hidden') if page is maxLength
    $(this).one 'webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', ->
      $('#slider').addClass 'b-ellipse-slider__ready'
      isScrolled = false



  $('#slider-pages li').one 'webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend', ->
    $('#slider').addClass 'b-ellipse-slider__ready b-ellipse-slider__loaded'
  $('#slider-pages li').on 'click', (e) ->
    idx = $(this).index()
    nextPage(idx+1)
  $('#slider-controls a').on 'click', (e) ->
    e.preventDefault()
    return if isScrolled
    link = $(this)
    active = parseInt($('#slider').attr('data-active'))
    if link.hasClass('prev')
      return if active is 1
      nextPage(active - 1)
    if link.hasClass('next')
      return if active is maxLength
      nextPage(active + 1)


  $('body.has-slider').on 'mousewheel', (e) ->
    return if isScrolled or scrollTimeout
    scrollTimeout = true
    active = parseInt($('#slider').attr('data-active'))

    clearTimeout(timeout)
    timeout = setTimeout ->
      scrollTimeout = false
    , 1000

    if e.originalEvent.wheelDelta < 0
      return if active is maxLength
      nextPage(active + 1)
    else
      return if active is 1
      nextPage(active - 1)
    return false




$(window).resize ->
  $(":root").css "font-size", ($(window).width() * 100) / 1920 + '%'
  q = 1920/1080
  c = $(window).width() / $(window).height()
  if c > q
    $(".l-content").css
      '-webkit-transform' : 'scale(' + q/c + ',' + q/c + ')'
      '-moz-transform'    : 'scale(' + q/c + ',' + q/c + ')'
      '-ms-transform'     : 'scale(' + q/c + ',' + q/c + ')'
      '-o-transform'      : 'scale(' + q/c + ',' + q/c + ')'
      'transform'         : 'scale(' + q/c + ',' + q/c + ')'
  else
    $(".l-content").css
      '-webkit-transform' : 'scale(1,1)'
      '-moz-transform'    : 'scale(1,1)'
      '-ms-transform'     : 'scale(1,1)'
      '-o-transform'      : 'scale(1,1)'
      'transform'         : 'scale(1,1)'

  $(".b-text").css "height", $(window).height() - $(".l-header").height()

