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

    function initialize() {
      // Create a map centered in Pyrmont, Sydney (Australia).
      map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -33.8666, lng: 151.1958},
        zoom: 15
      });

      // Search for Google's office in Australia.
      var request = {
        location: map.getCenter(),
        radius: '500',
        query: 'Google Sydney'
      };

      var service = new google.maps.places.PlacesService(map);
      service.textSearch(request, callback);
    }

    // Checks that the PlacesServiceStatus is OK, and adds a marker
    // using the place ID and location from the PlacesService.
    function callback(results, status) {
      if (status == google.maps.places.PlacesServiceStatus.OK) {
        var marker = new google.maps.Marker({
          map: map,
          place: {
            placeId: results[0].place_id,
            location: results[0].geometry.location
          }
        });
      }
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>
  <body>
 <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDU6e2ZAsap4YbkOgBPR2r_f7Yu5VIGens&libraries=places&callback=initialize">
    </script>
    <!-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-b2wppFtbO-nVEcIjFYdY8z7ygFQ0YA0&libraries=places" ></script> -->
    </div>
  </body>
</html>