import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElements = document.querySelectorAll('.map');
  // const fitMapToMarkers = (map, markers) => {
  //   const bounds = new mapboxgl.LngLatBounds();
  //   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  //   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  // };

// only build a map if there's a div#map to inject into
  if (mapElements) {
    mapElements.forEach((mapElement) => {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    let map = null;


    $("#info-modal-" + mapElement.dataset.id).on('shown.bs.modal', function () {
        map = new mapboxgl.Map({
          container: 'map-' + mapElement.dataset.id
        });
        map.resize();
      })
    $("#info-modal-" + mapElement.dataset.id).on('hidden.bs.modal', function () {
      if (map) {
        map.remove();
      }
      map = null;
    });
  });

  }
}



      // }, 1000);

 // });

export { initMapbox };
