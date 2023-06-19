require 'pry'

class ShowsController < ApplicationController

    get "/shows" do 
        shows = Show.all
        shows.to_json(include: :genre)
    end

    post '/shows' do
      show = Show.create(
        title: params[:title],
        # genre: params[:genre],
        seasons: params[:seasons],
        episodes: params[:episodes],
        language: params[:language],
        ongoing: params[:ongoing],
      )
      show.to_json
      
    end

    patch '/shows/:id' do 
      show = Show.find(params[:id])
      show.update(
        title: params[:title],
        genre_id: params[:genre_id],
        seasons: params[:seasons],
        episodes: params[:episodes],
        language: params[:language],
        ongoing: params[:ongoing],
      ).to_json
    end

    delete "/shows/:id" do
      show = Show.find(params[:id])
      show.destroy
      show.to_json
    end

end