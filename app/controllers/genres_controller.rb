class GenresController < ApplicationController

    get "/genres" do 
        genres = Genre.all
        genres.to_json()
    end


end