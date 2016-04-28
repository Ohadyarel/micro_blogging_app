require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader'
require './models'
require 'bundler/setup'
require 'rack-flash'

enable :sessions
use Rack::Flash, :sweep => true

configure(:development){set :database, 'sqlite3:rettiwt.sqlite3'}
set :sessions, true 

def current_user
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  end
end

get '/' do 
	erb :index
end

get '/sign_up' do 
	erb :sign_up
end

post '/sign-up' do
	if params[:terms] == "true"
		if params[:login][:password] == params[:repassword]
			if Users.where(username: params[:login][:username]).first == nil
				@user = User.create(params[:login])
				session[:user_id] = @user.id
				redirect '/profile/:username' ## TODO
			else
				flash[:alert] = "Username already exist. Please choose a different Username."
		  end
		else
			flash[:alert] = "Password does not match."
			redirect back
		end
	else
		flash[:alert] = "Please read and agree to the terms and conditions."
		redirect back
	end
end

post '/log-in' do
	@user = User.where(username: params[:username]).first
	if @user && @user.password == params[:password]
		session[:user_id] = @user.id
		redirect "/profile/#{@user[:username]}"
	else     
		flash[:alert] = "Your username or password is incorrect, please try again."   
		redirect "/" 
	end   
end

post '/post/create' do
	post = Post.create(params[:post])
	redirect "/feed"
end

get '/feed' do
	@posts = Post.all.slice(Post.all.length - 10, 10)
	erb :feed
end 


get '/log-out' do
	session.clear
	redirect '/'
end

get '/profile/:username' do
	current_user
	@profile_user = User.where(username: params[:username]).first
	@profile_user_posts = Post.where(user_id: @profile_user[:id])
	erb :profile
end


