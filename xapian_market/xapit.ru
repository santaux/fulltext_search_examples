require "rubygems"
require "xapit"

Xapit.load_config(File.expand_path('../config/xapit.yml', __FILE__), "rack_serv")

run Xapit::Server::App.new
