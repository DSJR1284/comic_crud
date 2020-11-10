require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :session
    set :session_secret, "everyonehasastory"
    end

  get "/" do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else 
      erb :welcome
    end 
  end 

  helpers do 
    
    def logged_in?
      !!current_user
    end 

    def current_user
      @current_user ||= User.find_by(session[:user_id]) if session[:user_id]
    end 

    def redirect_if_not_logged_in
      if !logged_in?
        session[:error] = "Please log in to view this story"
      redirect '/login'
      end 
    end 

  end 
  
end 