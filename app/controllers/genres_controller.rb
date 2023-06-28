class GenresController < ApplicationController

    get "/genres" do 
        genres = Genre.all
        genres.to_json(include: :shows)
    end


    post "/genres" do
      genre = Genre.create(
          name: params[:name],
          id: params[:id]
      )
      genre.to_json(include: :shows)
  end

   
      delete "/genres/:id" do
        genre = Genre.find(params[:id])
        genre.destroy
      end
end