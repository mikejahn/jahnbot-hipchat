var getIcedCoffe, ndivvy, office;

ndivvy = require('ndivvy');

office = {};
office.lat = 41.8854264;
office.long = -87.6232801; 

module.exports = function(robot) {
  return robot.respond(/find me divvy bikes near office/i, function(msg) {
    
    var stationsDeferred = ndivvy.nearbyStations(office.lat, office.long,4);
    stations.done(function(statusCode, station) {
		return msg.send("Station: ", station);
	}).fail(function(error, response) {
		return msg.send("Something went wrong =( ");
	});
  });
});