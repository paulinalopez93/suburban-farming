import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  // const fitMapToMarkers = (map, markers) => {
  //   const bounds = new mapboxgl.LngLatBounds();
  //   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  //   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  // };

// only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
    container: 'map',
       style: 'mapbox://styles/mapbox/light-v9',
    });






    $('#info-modalTomato').on('shown.bs.modal', function () { // chooseLocation is the id of the modal.
    //   window.setTimeout(function(){
    //     //     var mapDiv = document.getElementById('map');
    //     // var mapCanvas = document.getElementsByClassName('mapboxgl-canvas')[0];
    //     //            mapDiv.style.width = '50%';
    //     //     mapCanvas.style.width = '100%';
    //   console.log(map)
        setTimeout( function() {
          map.reSize();
        }, 1000);
      })
  }



      // }, 1000);

 // });

export { initMapbox };
