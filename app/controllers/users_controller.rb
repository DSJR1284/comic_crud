class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    erb :"/users/index"
  end

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
   user = User.find_by(username: params[:username])
   if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect "/users/#{user.id}"
   else 
     redirect "/login"
    end  
  end 

  # GET: /users/5
  get "/users/:id" do
    @user = User.find_by(id: params[:id])
    erb :"users/show"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end
