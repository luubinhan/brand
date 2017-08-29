(function($){
	$(window).resize(function() {
	   	
	});
	$(document).ready(function() {
		

		var waypoints = $('#header').waypoint(function(direction) {
		  if (direction === 'down') {
				$('#header').addClass('sticky')
		  } else {
				$('#header').removeClass('sticky')
		  }
		})


	});
	
})(window.jQuery)