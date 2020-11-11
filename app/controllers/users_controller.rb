class UsersController < ApplicationController

  #Routes match web request sent by a user to code in out application 
  #tells the app what data to send back to the user. 
  
  get "/new" do
    erb :"/users/new"
  end
  
  post "/new" do
    if params[:username] == "" || params[:password] == ""
      redirct "/users/new"
    else
     @user = User.create(params)
     session[:user_id] = @user.id
     redirect "/login"
    end 
  end
  
  get "/login" do
    erb :"/users/login"
  end

  post "/login" do  
   @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])    
     session[:user_id] = @user.id
     redirect "/users/#{@user.id}"
   else 
     redirect "/login"
    end  
  end 
  
  get "/users/:id" do
    if logged_in?
    @user = User.find(params[:id])      
    erb :"users/show"
    else
     redirect '/'        
    end
  end 

  get '/logout' do  
    session.clear   
    redirect '/'
  end

end
