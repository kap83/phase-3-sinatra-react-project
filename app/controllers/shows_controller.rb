require 'pry'

class ShowsController < ApplicationController

  
   
    post '/genres/:genre_id/shows' do
      genre = Genre.find(params[:genre_id])
      show = genre.shows.create(
        title: params[:title],
        seasons: params[:seasons],
        episodes: params[:episodes],
        language: params[:language],
      )
      show.to_json
    end

  patch '/genres/:genre_id/shows/:id' do 
      genre = Genre.find(params[:genre_id])
      show = genre.shows.find(params[:id])
      show.update(
        title: params[:title],
        seasons: params[:seasons],
        episodes: params[:episodes],
        language: params[:language],
      )
      show.to_json
    end

  delete "/shows/:id" do
      show = Show.find(params[:id])
      show.destroy
    end

end