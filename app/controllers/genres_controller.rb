class GenresController < ApplicationController

    get "/genres" do 
        genres = Genre.all
        genres.to_json(include: :shows)
    end


    post '/genre' do
      genre = Genre.create(
        name: params[:name]
      )
      genre.to_json
    end

   
      delete "/genres/:id" do
        genre = Genre.find(params[:id])
        genre.destroy
      end
end