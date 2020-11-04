class ComicsController < ApplicationController

  # GET: /comics
  get "/comics" do
    erb :"/comics/index.html"
  end

  # GET: /comics/new
  get "/comics/new" do
    erb :"/comics/new.html"
  end

  # POST: /comics
  post "/comics" do
    redirect "/comics"
  end

  # GET: /comics/5
  get "/comics/:id" do
    erb :"/comics/show.html"
  end

  # GET: /comics/5/edit
  get "/comics/:id/edit" do
    erb :"/comics/edit.html"
  end

  # PATCH: /comics/5
  patch "/comics/:id" do
    redirect "/comics/:id"
  end

  # DELETE: /comics/5/delete
  delete "/comics/:id/delete" do
    redirect "/comics"
  end
end
