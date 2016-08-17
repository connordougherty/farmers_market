function initMap() {
  var styledMapType = new google.maps.StyledMapType(
  [
      {
          "featureType": "all",
          "elementType": "labels",
          "stylers": [
              {
                  "visibility": "on"
              }
          ]
      },
      {
          "featureType": "landscape",
          "elementType": "all",
          "stylers": [
              {
                  "visibility": "on"
              },
              {
                  "color": "#f3f4f4"
              }
          ]
      },
      {
          "featureType": "landscape.man_made",
          "elementType": "geometry",
          "stylers": [
              {
                  "weight": 0.9
              },
              {
                  "visibility": "off"
              }
          ]
      },
      {
          "featureType": "poi.park",
          "elementType": "geometry.fill",
          "stylers": [
              {
                  "visibility": "on"
              },
              {
                  "color": "#83cead"
              }
          ]
      },
      {
          "featureType": "road",
          "elementType": "all",
          "stylers": [
              {
                  "visibility": "on"
              },
              {
                  "color": "#ffffff"
              }
          ]
      },
      {
          "featureType": "road",
          "elementType": "labels",
          "stylers": [
              {
                  "visibility": "off"
              }
          ]
      },
      {
          "featureType": "road.highway",
          "elementType": "all",
          "stylers": [
              {
                  "visibility": "on"
              },
              {
                  "color": "#fee379"
              }
          ]
      },
      {
          "featureType": "road.arterial",
          "elementType": "all",
          "stylers": [
              {
                  "visibility": "on"
              },
              {
                  "color": "#fee379"
              }
          ]
      },
      {
          "featureType": "water",
          "elementType": "all",
          "stylers": [
              {
                  "visibility": "on"
              },
              {
                  "color": "#7fc8ed"
              }
          ]
      }
  ],
  {name: 'Styled Map'});

  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 35.585213, lng: -82.559235},
    zoom: 10,
    mapTypeControlOptions: {
      mapTypeIds: ['roadmap', 'satellite', 'hybrid', 'terrain', 'styled_map']
    },
    disableDefaultUI: true
  });

  map.mapTypes.set('styled_map', styledMapType);
  map.setMapTypeId('styled_map');
}