$(document).ready(function() {
  $("#grid").imagesLoaded(function() {
    $('#grid').masonry({
           itemSelector: '#listing-box',
           isFitWidth: true,
           isAnimated: !Modernizr.csstransitions
                      });
                            });
                  });