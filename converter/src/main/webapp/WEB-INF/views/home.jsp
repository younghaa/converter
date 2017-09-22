<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 80%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 80%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
    var map;
    var service;
    var infowindow;

    function initialize() {
      var pyrmont = new google.maps.LatLng(-33.8665433,151.1956316);

      map = new google.maps.Map(document.getElementById('map'), {
          center: pyrmont,
          zoom: 15
        });

      var request = {
        location: pyrmont,
        radius: '500',
        types: ['store']
      };

      service = new google.maps.places.PlacesService(map);
      service.nearbySearch(request, callback);
    }

    function callback(results, status) {
      if (status == google.maps.places.PlacesServiceStatus.OK) {
        for (var i = 0; i < results.length; i++) {
          var place = results[i];
          createMarker(results[i]);
        }
      }
    }
/*       var map;
      var Points = [
    	  {la: [37.520749, 127.023244], name:'C27 ', addr:'서울특별시 강남구 신사동 545-12'}
    	  	];

      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 16,
          center: new google.maps.LatLng(37.5737496,126.9854138),
          mapTypeId: google.maps.MapTypeId.RoadMap,
        	  draggable: true

        });

        // Create a <script> tag and set the USGS URL as the source.
        var script = document.createElement('script');
        // This example uses a local copy of the GeoJSON stored at
        // http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_week.geojsonp
        script.src = 'https://developers.google.com/maps/documentation/javascript/examples/json/earthquake_GeoJSONP.js';
        document.getElementsByTagName('head')[0].appendChild(script);
      }

      // Loop through the results array and place a marker for each
      // set of coordinates.
      window.eqfeed_callback = function(results) {
        for (var i = 0; i < results.features.length; i++) {
          var coords = results.features[i].geometry.coordinates; 
          var latLng = new google.maps.LatLng(coords[0],coords[1]);
          var marker = new google.maps.Marker({
            position: latLng,
            map: map
          });
        }
      } */
    </script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDU6e2ZAsap4YbkOgBPR2r_f7Yu5VIGens&libraries=places"></script>
<!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDU6e2ZAsap4YbkOgBPR2r_f7Yu5VIGens&callback=initMap" type="text/javascript"></script> -->
  </body>
</html>
