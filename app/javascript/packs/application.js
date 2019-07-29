import "bootstrap";
import { stripeFunction } from 'components/payments'
import 'mapbox-gl/dist/mapbox-gl.css';
import { initAutocomplete } from '../plugins/init_autocomplete'
import { initMapbox } from '../plugins/init_mapbox';
import { navbarVisible } from '../comps/navbar';
import { H1Visible } from '../comps/banner-h1';
import { navbarOnScroll } from '../comps/navbar_scroll';

navbarVisible();
navbarOnScroll();
H1Visible();
initMapbox();
initAutocomplete();
stripeFunction();

