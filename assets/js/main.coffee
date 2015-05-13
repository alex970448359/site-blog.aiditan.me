---
---

$(->
  # Main objects
  banner  = $('#banner')
  feature = $('#feature')
  content = $('#content')

  # Data attribute: data-am-smooth-scroll
  $('button[data-am-smooth-scroll]')
  .add $('a[data-am-smooth-scroll]')
  .each ->
    if /#/.test($(this).attr('href'))
      $(this).click ->
        target = $($(this).attr('href'))
        $(window).smoothScroll
          position: target.position().top
        false # Stop bubbling

  # Data attribute: data-stretch-full-width
  $('[data-stretch-full-width]')
  .add $('[data-stretch-full]')
  .each ->
    m = - ($(window).width() - $(this).width()) / 2
    $(this).css
      'margin-left':  m
      'margin-right': m
      width: $(window).width()

  # Data attribute: data-stretch-full-height
  $('[data-stretch-full-height]')
  .add $('[data-stretch-full]')
  .each ->
    m = - ($(window).height() - $(this).height()) / 2
    $(this).css
      'margin-left':  m
      'margin-right': m
      height: $(window).height()

  # Component: #feature
  feature.add(feature.children()).hide()
  $('#feature img').load ->
    # Foreground
    forefeatureH = 300
    feature.height(forefeatureH)
    feature.slideDown 'slow', ->
      $('#feature .credit').fadeIn('slow')
      $('#feature .close').fadeIn('slow')
      .click -> feature.slideUp 'slow'
    # Background
    backfeatureH = feature.offset().top + forefeatureH
    ratio =
      width: $(window).width() / $('#feature img').width()
      height: backfeatureH / $('#feature img').height()
    ratio = if ratio.width > ratio.height then ratio.width else ratio.height
    feature.css
      'background-image': "url(#{$('#feature img').attr('src')})"
      'background-size':
        $('#feature img').width() * ratio + 'px ' +
        $('#feature img').height()* ratio + 'px'
    $(window)
    .scroll ->
      offset = feature.offset().top - $(document).scrollTop()
      feature.css 'background-position',
        "50% #{(backfeatureH - $('#feature img').height()*ratio)/2 - offset}px"
    .trigger('scroll')

  # Component: #gotop
  $('#gotop').css
    left: content.position().left + content.width() - $('#gotop').width()
    bottom: $('#gotop').height()
  banner.waypoint
    handler: (direction) ->
      if direction == 'down'
        $('#gotop').fadeIn("slow")
      else
        $('#gotop').fadeOut("slow")
    offset: '-100%'
)
