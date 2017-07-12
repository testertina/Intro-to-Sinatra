require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/fish_controller.rb'

run FishesController
