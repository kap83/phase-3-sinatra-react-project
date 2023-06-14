class GenresController < ApplicationController

    get "/genres" do 
        genres = Genre.all
        genres.to_json(include: :shows)
    end

    get "/genres/:id/" do
        genre = Genre.find(params[:id])
        shows = genre.shows
        shows.to_json
      end
      
    
    post "genres/shows" do
        genres = Genre.shows.create(
            title: params[:title],
            # genre_id: params[:genre_id],
            category: params[:category], 
            seasons: params[:seasons],
            number_of_episodes: params[:number_of_episodes],
            original_language: params[:original_language],
            ongoing: params[:ongoing]
        )
    end

end