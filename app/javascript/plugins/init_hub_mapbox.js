import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};


const initHubMapbox = () => {
  const mapElement = document.getElementById('hub-map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'hub-map',
      style: 'mapbox://styles/mapbox/light-v9'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.id);

        const replacePopup = () => {
          const button = document.getElementById(`hub-button-${marker.id}`);
          button.click();
          popup.remove();
          const newPopup = new mapboxgl.Popup().setHTML(marker.id);
          markerOnMap.setPopup(newPopup);
          newPopup.on('open', function(e) {
             // popup opened so we fire an event
             replacePopup();
           });
        }

        popup.on('open', function(e) {
           // popup opened so we fire an event
           replacePopup();
         });

        const markerOnMap = new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(map);
      });

      fitMapToMarkers(map, markers);
  }
};

export { initHubMapbox };
