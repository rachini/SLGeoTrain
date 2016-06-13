<html>
<h3>code for map <?php echo $title;?></h3>

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
    
    <body  id="map_content"> 
        <div id="map"></div>
        <script>


            var icon = new google.maps.MarkerImage("http://maps.google.com/mapfiles/ms/micons/blue.png",
                    new google.maps.Size(32, 32), new google.maps.Point(0, 0),
                    new google.maps.Point(16, 32));
            var center = null;
            var map = null;
            var currentPopup;
            var bounds = new google.maps.LatLngBounds();

            function addMarker(lat, lng, info) {
                var pt = new google.maps.LatLng(lat, lng);
                bounds.extend(pt);
                var marker = new google.maps.Marker({
                    position: pt,
                    icon: icon,
                    map: map
                });
                var popup = new google.maps.InfoWindow({
                    content: info,
                    maxWidth: 300
                });
                google.maps.event.addListener(marker, "click", function() {
                    if (currentPopup != null) {
                        currentPopup.close();
                        currentPopup = null;
                    }
                    popup.open(map, marker);
                    currentPopup = popup;
                });
                google.maps.event.addListener(popup, "closeclick", function() {
                    map.panTo(center);
                    currentPopup = null;
                });
            }
            function initMap() {


                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 11,
                    center: {lat: 6.9335, lng: 79.8505},
                    mapTypeId: google.maps.MapTypeId.TERRAIN
                });



//                var marker = new google.maps.Marker({
//                    position: {lat: 6.9335, lng: 79.8505},
//                    map: map,
//                    title1: 'Colombo Fort'
//                });
//               var marker2 = new google.maps.Marker({
//                    position: {lat: 6.9295, lng: 79.8663},
//                    map: map,
//                    title2: 'Maradana'
//                });
//                var marker3 = new google.maps.Marker({
//                   position: {lat: 6.9375, lng: 79.8792},
//                   map: map,
//                   title3: 'Dematagoda'
//               });
//
//                marker.setMap(map);
//                marker2.setMap(map);
//                marker3.setMap(map);
            }



        </script>


        <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer></script>
        
        <input type="button" name="x" id="x" onclick="load_map()"/>
    </body>




<script type="text/javascript">

            function load_map() {
                
             
                $.ajax({
                    url: "<?= site_url("trackdata_controller/load_map_rachni") ?>",
                    type: "post", // To protect sensitive data                   
                    success: function(response) {
                        $('#map_content').html(response);
                    }
                });
            }
</script>