require("chartkick")
require("chart.js")

import "bootstrap";
import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";
import { stripeFunction } from 'components/payments'
import 'mapbox-gl/dist/mapbox-gl.css';
import { initAutocomplete } from '../plugins/init_autocomplete'
import { initMapbox } from '../plugins/init_mapbox';
import { initHubMapbox } from '../plugins/init_hub_mapbox';
import { navbarVisible } from '../comps/navbar';
import { H1Visible } from '../comps/banner-h1';
import { navbarOnScroll } from '../comps/navbar_scroll';

// Stimulus.JS
const application = Application.start()
const context = require.context("./controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

navbarVisible();
navbarOnScroll();
H1Visible();
initMapbox();
initHubMapbox();
initAutocomplete();
stripeFunction();
