import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElements = document.querySelectorAll('.map');

  if (mapElements) {
    mapElements.forEach((mapElement) => {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    let map = null;


    $("#info-modal-" + mapElement.dataset.id).on('show.bs.modal', function () {
      map = new mapboxgl.Map({
        container: 'map-' + mapElement.dataset.id,
        style: 'mapbox://styles/mapbox/light-v9',
      });
      console.log("MAP LOADING");
    });
    $("#info-modal-" + mapElement.dataset.id).on('shown.bs.modal', function () {
      window.setTimeout(function() {
        map.resize();
        console.log("MAP RESIZED");
      }, 500);
    });
    $("#info-modal-" + mapElement.dataset.id).on('hide.bs.modal', function () {
      if (map) {
        map.remove();
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
