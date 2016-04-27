require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloder'
require './models'
require 'bundler/setup'
require 'rack-flash'

enable :sessions
use Rack::Flash, :sweep => true

set :database, "sqlite3:rettiwt.sqlite3"
set :sessions, true 

def current_user
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  end
end

get '/' do 
	erb :index
end
