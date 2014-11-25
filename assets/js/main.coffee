---
---

$(->
  # dl-menu options
  $('#dl-menu').dlmenu({
    animationClasses : { classin : 'dl-animate-in', classout : 'dl-animate-out' }
  });
  $('.dl-close').on('click', ->
    $('#dl-menu').data('dlmenu').closeMenu();
  );

  # FitVids options
  $("article").fitVids();
  $(".close-menu").click(->
    $(".menu").toggleClass("disabled");
    $(".links").toggleClass("enabled");
  );
  $(".about").click(-> $("#about").css('display','block') );
  $(".close-about").click(-> $("#about").css('display','') );

  # Add lightbox class to all image links
  $("a[href$='.jpg'],a[href$='.jpeg'],a[href$='.JPG'],a[href$='.png'],a[href$='.gif']").addClass("image-popup");

  # Magnific-Popup options
  $(document).ready(->
    $('.image-popup').magnificPopup({
      type: 'image',
      tLoading: 'Loading image #%curr%...',
      gallery: {
        enabled: true,
        navigateByImgClick: true,
        preload: [0,1] # Will preload 0 - before current, and 1 after the current image
      },
      image: {
        tError: '<a href="%url%">Image #%curr%</a> could not be loaded.',
      },
      # Delay in milliseconds before popup is removed
      removalDelay: 300,
      # Class that is added to body when popup is open.
      # make it unique to apply your CSS animations just to this exact popup
      mainClass: 'mfp-fade'
    });
  );
)
