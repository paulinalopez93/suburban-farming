import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElements = document.querySelectorAll('.map');

  if (mapElements) {
    mapElements.forEach((mapElement) => {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    let map = null;
    mapElement.classList.add("invisible");


    $("#info-modal-" + mapElement.dataset.id).on('show.bs.modal', function () {
      map = new mapboxgl.Map({
        container: 'map-' + mapElement.dataset.id,
        style: 'mapbox://styles/mapbox/light-v9',
      });
      console.log("MAP LOADING");
    });
    $("#info-modal-" + mapElement.dataset.id).on('shown.bs.modal', function () {
      mapElement.classList.remove("invisible");
      map.resize();
      console.log("MAP RESIZED");
      const marker = JSON.parse(mapElement.dataset.marker);
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
      console.log("MARKERS LOADED");
      fitMapToMarkers(map, [marker]);
      console.log("MAP FIT TO MARKER");
    });
    $("#info-modal-" + mapElement.dataset.id).on('hide.bs.modal', function () {
      if (map) {
        map.remove();
        mapElement.classList.add("invisible");
      }
      console.log("MAP REMOVED");
      map = null;
    });
  });
  }
}



      // }, 1000);

 // });

export { initMapbox };
