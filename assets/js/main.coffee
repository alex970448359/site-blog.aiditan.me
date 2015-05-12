---
---

$(->
  # Main objects
  banner = $('banner')
  content = $('#content')

  # Data attribute: data-am-smooth-scroll
  $('button[data-am-smooth-scroll]')
  .add $('a[data-am-smooth-scroll]')
  .each ->
    if /#/.test($(this).attr('href'))
      $(this).click ->
        target = $($(this).attr('href'))
        $(window).smoothScroll
          position: target.position().top - target.height()
        false # Stop bubbling

  # Data attribute: data-full-stretched
  $('[data-full-stretched]').each ->
    m = - ($(window).width() - $(this).width()) / 2
    $(this).css
      'margin-left':  m
      'margin-right': m

  # Component: #gotop
  $('#gotop').css
    left: content.position().left + content.width() - $('#gotop').width()
    bottom: $('#gotop').height()
  content.waypoint
    handler: (direction) ->
      if direction == 'down'
        $('#gotop').fadeIn("slow")
      else
        $('#gotop').fadeOut("slow")
    offset: '-50%'
)
