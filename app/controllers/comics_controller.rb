class ComicsController < ApplicationController

 
  get "/comics" do
    @comics = current_user.comics
      erb :"comics/index"
  end 

    # GET: /comics/new
    get "/comics/new" do
      erb :"/comics/new"
     end
   
     post "/comics" do 
        comic = Comic.create(title: params[:title], image_url: params[:image_url], blurb: params[:blurb], user_id: current_user.id)
        redirect "/comics/#{comic.id}"
     end 

       # GET: /comics/5    
      get "/comics/:id" do 
        @comics = Comic.find(params[:id])
        erb :"/comics/show"
      end
       # POST: /comics
      post "/comics" do  
      end  

       # GET: /comics/5/edit
       get "/comics/:id/edit" do
          @comics = Comic.find(params[:id])
         erb :"/comics/edit"
       end

  # PATCH: /comics/5
  patch "/comics/:id" do
    @comcis = Comic.find(param[:id])
    @comics.update(title: params[:title], image_url: params[:image_url], blurb: params[:blurb])
    redirect "/comics/#{@comics.id}"
  end


    # DELETE: /comics/5/delete
    delete "/comics/:id/delete" do
      @comics = Comic.find(params[:id])
      @comics.destroy
      redirect "/comics"
    end  

end
