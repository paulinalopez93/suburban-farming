import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initAutocomplete } from '../plugins/init_autocomplete'
import { initMapbox } from '../plugins/init_mapbox';
import { navbarVisible } from '../comps/navbar';
import { H1Visible } from '../comps/banner-h1';

H1Visible();
navbarVisible();
initAutocomplete();
initMapbox();
