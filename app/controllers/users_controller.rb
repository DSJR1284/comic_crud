class UsersController < ApplicationController

 
  # GET: /users/new
  get "/new" do
    erb :"/users/new"
  end

  # POST: /users
  post "/new" do
    @user = User.create(params)
    session[:user_id] = @user.id
    redirect "/login"
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

  # GET: /users/5
  get "/users/:id" do
    @user = User.find_by(id: params[:id])
    erb :"users/show"
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end
