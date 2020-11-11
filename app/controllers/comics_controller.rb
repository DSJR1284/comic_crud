class ComicsController < ApplicationController

 
  get "/comics" do
    @comics = current_user.comics
      erb :"comics/index"
  end 

  post "/comics" do 
    comic = Comic.create(title: params[:title], image_url: params[:image_url], blurb: params[:blurb], user_id: current_user.id)
    redirect "/comics/#{comic.id}"
  end 
    
  get "/comics/new" do
      erb :"/comics/new"
  end  

        
  get "/comics/:id" do 
     @comics = Comic.find(params[:id])
      erb :"/comics/show"
  end

  get "/comics/:id/edit" do
    @comics = Comic.find(params[:id])
    erb :"/comics/edit"
  end

  patch "/comics/:id" do
    @comics = Comic.find(params[:id])
    @comics.update(title: params[:title], image_url: params[:image_url], blurb: params[:blurb])
    redirect "/comics/#{@comics.id}"
  end
    
  delete "/comics/:id/delete" do
    @comics = Comic.find(params[:id])
    @comics.destroy
    redirect "/comics"
  end

end
