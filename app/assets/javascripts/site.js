$(document).on('turbolinks:load', function(){
	//jquery Zoom Plugin
	$('.img-zoom').elevateZoom({tint:true, tintColour:'#df9fbf', tintOpacity:0.4});
    //plugin for star rating 
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
});