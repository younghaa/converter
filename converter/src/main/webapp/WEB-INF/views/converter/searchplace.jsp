<!DOCTYPE html>
<html>
  <head>
    <title>Place details</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    		<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angularjs/1.4.3/angular.min.js?2017082501"></script>
		<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angularjs/1.4.3/angular-route.min.js?2017082501"></script>
		<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angularjs/1.4.3/angular-animate.min.js?2017082501"></script>
		<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/angularjs/1.4.3/angular-sanitize.min.js?2017082501"></script>
		<script type="text/javascript" src="https://dfzrjox9sv97l.cloudfront.net/dicons_20160930/bootstrap/ui-bootstrap-tpls-0.13.0.min.js?2017082501"></script>
    
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDU6e2ZAsap4YbkOgBPR2r_f7Yu5VIGens&libraries=places&callback=initialize">
    </script>
<script>
			var app = angular.module('app', ['loginCtrl']);

			var gps = false;

			function showMap(id,data) {

				if(data[0] !== undefined) {
					var center = new google.maps.LatLng(data[0].latitude,data[0].longitude);
				} else {
					var center = new google.maps.LatLng(37.492131,127.050661);
				}

				var myOption = {
					center: center,
					mapTypeId: google.maps.MapTypeId.RoadMap,
					draggable: true,
					panControl: true,
					zoomControl: true,
					navigationControl: true,
					mapTypeControl: false,
					scrollwheel: false,
					disableDoubleClickZoom: false,
					streetViewControl: true,
				};

				var map = new google.maps.Map(document.getElementById(id),myOption);
				var bounds = new google.maps.LatLngBounds();

				var markerArray = new Array();
				for(var i in data) {
					var icon = {
						url:"https://dfzrjox9sv97l.cloudfront.net/micons/img/map_icon/map_icon/spot_"+(parseInt(i)+1)+".png",
						scaledSize: new google.maps.Size(28,33)
					};
					markerArray[i] = new google.maps.Marker({
						position: {lat:parseFloat(data[i].latitude),lng:parseFloat(data[i].longitude)},
						map : map,
						icon : icon,
						visibility : true
					});
					bounds.extend(markerArray[i].position);
				}

				map.fitBounds(bounds);
			}

			function noImage(obj) {
				var rand = Math.floor((Math.random() * 10) / 2 + 1);
//				obj.src = "img/nullphoto/null-photo-0"+rand+"@2x.png";
				obj.src = "/img/profile/photo/null-relation-photo@2x.png";
			}
		</script>

  </head>
  <body>
    <div id="map"></div>
    
  </body>
</html>