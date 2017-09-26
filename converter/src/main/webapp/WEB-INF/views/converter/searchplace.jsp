<!DOCTYPE html>
    <!--height: 280px; width: 19%; side size -->
    <!--height: 400px; width: 100%; top size -->
<html>
  <head>
    <style>
      #map {
        height: 280px;
        width: 19%;
       }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      function initMap() {
        var rt = {lat: 37.497187, lng: 127.026859}; 
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 16,
          center: rt
        });
        var marker = new google.maps.Marker({
          position: rt,
          map: map
        });
      }
      var map;
      var service;
      var infowindow;

      function initialize() {
        var pyrmont = new google.maps.LatLng(37.497187, 127.026859);

        map = new google.maps.Map(document.getElementById('map'), {
            center: pyrmont,
            zoom: 15
          });

        var request = {
          location: pyrmont,
          radius: '500',
          query: 'restaurant'
        };

        service = new google.maps.places.PlacesService(map);
        infoWindow = new google.maps.InfoWindow();
        service.textSearch(request, callback);
        service.getDetails(request, callback);
      }

      function callback(results, status) {
        if (status == google.maps.places.PlacesServiceStatus.OK) {
          for (var i = 0; i < results.length; i++) {
            var place = results[i];
            createMarker(results[i]);
          }
        }
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDU6e2ZAsap4YbkOgBPR2r_f7Yu5VIGens&callback=initMap">
    </script>
  </body>
</html>