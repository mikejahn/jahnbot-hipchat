# Description:
#   Find Divvy bikes near you or your office
#
# Commands:
#   hubot find me divvy bikes

nDivvy = require( "ndivvy" )

module.exports = (robot) ->
  robot.respond /find me divvy bikes/i, (msg) ->
  	nDivvy.getStationById(5).done (statusCode, station) ->
    	msg.send "Name: #{station.stationName}\n Available Bikes: #{station.availableBikes}\n Available Docks: #{station.availableDocks}" 