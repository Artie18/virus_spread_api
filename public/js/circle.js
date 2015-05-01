$(document).ready(function () {
  ymaps.ready(init);
})

function init() {

  $.ajax({
    url: "http://virusspread.herokuapp.com/api/markers/all",
    type: "GET",
    success: function(data) {

    var resp = data.res;
    $.getJSON("http://www.telize.com/geoip?callback=?",
		  function(json) {
        var myMap = new ymaps.Map("map", {
            center: [json.latitude, json.longitude],
            zoom: 11,
            controls: []
        });

        myMap.controls.add(new ymaps.control.ZoomControl())
        myMap.controls.add(new ymaps.control.SearchControl())

        for(i = 0; i < resp.length; i++) {

          var circle = new ymaps.Circle([
            [resp[i].lt, resp[i].ln],
            200
          ],
          {
            balloonContent: "200 метров бацил",
            hintContent: "Тут можно заболеть!"
          },
          {
            draggable: false,
            fillColor: "#DB709377",
            strokeOpacity: 1,
            strokeWidth: 0
          });
          myMap.geoObjects.add(circle);

        }
		  });

  }})


}
