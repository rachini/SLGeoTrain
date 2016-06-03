<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
        <meta charset="utf-8">
        <style>
            #map {
                width: 900px;
                height: 900px;
            }
        </style>
    </head>
    <body>
        <div id="map"></div>
        <script>
            function initMap() {


                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 11,
                    center: {lat: 6.9335, lng: 79.8505},
                    mapTypeId: google.maps.MapTypeId.TERRAIN
                });

                var marker = new google.maps.Marker({
                    position: {lat: 6.9335, lng: 79.8505},
                    map: map,
                    title1: 'Colombo Fort'
                });
                var marker2 = new google.maps.Marker({
                    position: {lat: 6.9295, lng: 79.8663},
                    map: map,
                    title2: 'Maradana'
                });
//                var marker3 = new google.maps.Marker({
//                    position: {lat: 6.9375, lng: 79.8792},
//                    map: map,
//                    title3: 'Dematagoda'
//                });

                marker.setMap(map);
                marker2.setMap(map);
//                marker3.setMap(map);
            }



        </script>
        <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer></script>
    </body>
</html>