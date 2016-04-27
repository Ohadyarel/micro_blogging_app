require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloder'
require './models'
require 'bundler/setup'
require 'rack-flash'

enable :sessions
use Rack::Flash, :sweep => true
