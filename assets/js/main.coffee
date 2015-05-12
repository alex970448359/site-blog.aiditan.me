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
          position: target.position().top - target.height()
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
  if feature.length == 1
    height = feature.offset().top + feature.height()
    ratio =
      width: $(window).width() / $('#feature img').width()
      height: height / $('#feature img').height()
    ratio = if ratio.width > ratio.height then ratio.width else ratio.height
    feature.css
      'background-size':
        $('#feature img').width() * ratio + 'px ' +
        $('#feature img').height()* ratio + 'px'
      'background-position': '50% -' + feature.offset().top + 'px'
    $(window).scroll ->
      offset = feature.offset().top - $(document).scrollTop()
      feature.css 'background-position', "50% #{-offset}px"
  else
    console.log('Wrong number of feature images.')

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
