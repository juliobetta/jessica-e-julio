$ ->
  origin =
    church:
      lat: -20.9650345
      lng: -42.0404822
    room:
      lat: -20.9631018
      lng: -42.0380089


  # CREATE MAP ================================================================================
  map = new GMaps
    div: 'map'
    lat: origin.church.lat
    lng: origin.church.lng
    markers: [
      {lat: origin.church.lat, lng: origin.church.lat},
      {lat: origin.room.lat, lng: origin.room.lat}
    ]


  # ADD MARKERS ================================================================================
  map.addMarker
    title: 'Igreja Casa de Oração',
    lat: origin.church.lat
    lng: origin.church.lng
    infoWindow:
      content: '<div class="info-window-content"><strong>Igreja Casa de Oração</strong></div>'

  map.addMarker
    title: 'Salão de Festas Miguel Nardes',
    lat: origin.room.lat
    lng: origin.room.lng
    infoWindow:
      content: '<div class="info-window-content"><strong>Salão de Festas Miguel Nardes</strong></div>'

  $('#locations').on('click', 'a', (e) ->
    e.preventDefault()
    $link = $(e.currentTarget)

    # find the marker based on link title
    marker = $.grep(map.markers, (object) ->
      object.title == $link.html();
    )[0];

    position = marker.getPosition()

    lat = position.lat()
    lng = position.lng()
    map.setCenter(lat, lng)
    google.maps.event.trigger(marker, 'click')
  )

  # GEOLOCATE USER =============================================================================
  GMaps.geolocate
    success: (position) ->
      map.drawRoute
        origin      : [position.coords.latitude, position.coords.longitude]
        destination : [origin.church.lat, origin.church.lng]
        travelMode  : 'driving'
        strokeColor : '#ff9b83'
        strokeWeight: 7

      # map.setCenter(position.coords.latitude, position.coords.longitude)