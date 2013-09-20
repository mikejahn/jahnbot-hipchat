# Description:
#   Find Divvy bikes and docks around you
#   
#
# Dependencies:
#   "ndivvy": "0.0.6"
#
# Configuration:
#   HUBOT_ICED_COFFEE_WEATHER_ID
#
# Commands:
#   hubot find me divvy bikes near office
#   hubot find me divvy docks near office
#
#
# Author:
#   @mikejahn


ndivvy = require("ndivvy")
office = {}
office.lat = 41.8854264
office.long = -87.6232801
module.exports = (robot) ->
  robot.respond /find me divvy bikes near office/i, (msg) ->
    stationsDeferred = ndivvy.nearbyStations(office.lat, office.long, 4)
    stations.done((statusCode, station) ->
      msg.send "Station: ", station
    ).fail (error, response) ->
      msg.send "Something went wrong =( "
