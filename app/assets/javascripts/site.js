//plugin for star rating 
var refreshRating = function() {
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
};

$(document).on('turbolinks:load ajaxSuccess', function() {
  refreshRating();
  //jquery Zoom Plugin
  $('.img-zoom').elevateZoom({tint:true, tintColour:'#df9fbf', tintOpacity:0.4});
});