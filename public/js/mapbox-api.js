$(document).ready(function () {
  var CIRCLE_RADIUS = 50;

  L.mapbox.accessToken = 'pk.eyJ1IjoiYXJ0aWUxOCIsImEiOiJKLVRmRUVrIn0.D55B8_EOLw9r7HQo-M6zMQ';
  var map = L.mapbox.map('map', 'artie18.m559o3ke', { zoomControl: false });
  new L.Control.Zoom({ position: 'topright' }).addTo(map);

  // Move to backend-api.js after RequireJS is added
  $.ajax({
    url: "/api/markers/all",
    type: "GET",
    success: function(_response) {
      var data = _response.res,
          mbOptions = { color: '#FF0055',
                        stroke: false };

      for(var i = 0; i < data.length; i++) {
        var elem = data[i],
            position = [elem.lt, elem.ln];

        L.circle(position, CIRCLE_RADIUS, mbOptions).addTo(map);
      }

    }
  });


});
