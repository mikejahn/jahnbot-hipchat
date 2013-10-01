# Description:
#   Find out if the US Government is shut down!
#
# Commands:
#   is the government shut down? - responds with yes or no

jsdom = require("jsdom");
Util = require "util"

module.exports = (robot) ->
  robot.respond /is the government shut down?/i, (msg) ->
    jsdom.env "http://www.isthegovernmentshutdown.com", ["http://code.jquery.com/jquery.js"], (errors, window) ->
      $ = window.$;
      msg.send "#{Util.inspect($('body').find('td p:first').text())}"
      msg.send "http://www.isthegovernmentshutdown.com"
  	