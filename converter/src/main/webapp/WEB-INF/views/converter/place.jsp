<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Place details</title>
    <div id="map"></div>
    </head>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    <script>
    var map;
    var service;
    var infowindow;

    function initialize() {
      var rt = new google.maps.LatLng(37.497187, 127.026859);

      map = new google.maps.Map(document.getElementById('map'), {
          center: rt,
          zoom: 15
        });

      var request = {
        location: rt,
        radius: '500',
        query: 'restaurant'
      };

      service = new google.maps.places.PlacesService(map);
      service.textSearch(request, callback);
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
  <body>

    <!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDU6e2ZAsap4YbkOgBPR2r_f7Yu5VIGens&libraries=places&callback=initMap">
    </script> -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-b2wppFtbO-nVEcIjFYdY8z7ygFQ0YA0&libraries=places" ></script>
    </div>
  </body>
</html>