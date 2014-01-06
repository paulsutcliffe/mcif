gm_init = ->
  gm_center = new google.maps.LatLng(-12.104215,-77.038887)
  gm_map_type = google.maps.MapTypeId.ROADMAP
  map_options = {center: gm_center, zoom: 18, mapTypeId: gm_map_type, scrollwheel: false}
  new google.maps.Map(@map_canvas,map_options);
$ ->
  map = gm_init()

  # Drop marker in the same location
  marker = new google.maps.Marker
    map: map
    animation: google.maps.Animation.DROP
    position: new google.maps.LatLng(-12.104215,-77.038887)
    icon: '/assets/gmaps-marker.png'
