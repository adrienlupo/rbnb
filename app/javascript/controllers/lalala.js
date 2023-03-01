var mapboxgl = require('mapbox-gl/dist/mapbox-gl.js');

mapboxgl.accessToken = 'pk.eyJ1IjoicmJ1c2NvdDAxIiwiYSI6ImNsZWhhMnRnMDBoNTgzeG1jNzFtaTQ0MDUifQ.xS72JMJpzO2eEOX5GiznWA';
var map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v11'
});
