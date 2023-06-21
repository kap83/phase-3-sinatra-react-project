require 'pry'

class ShowsController < ApplicationController

    get "/shows" do 
        shows = Show.all
        shows.to_json(include: :genre)
    end
    
    get "/shows/:id" do
      show = Show.find(params[:id])
      show.to_json
    end

    post 'genres/:genre_id/shows' do
      genre = Genre.find(params[:genre_id])
      binding.pry
      show = genre.shows.Create(
        title: params[:title],
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
       
        seasons: params[:seasons],
        episodes: params[:episodes],
        language: params[:language],
        ongoing: params[:ongoing],
      )
      show.to_json
    end

    delete "/shows/:id" do
      show = Show.find(params[:id])
      show.destroy

    end

end