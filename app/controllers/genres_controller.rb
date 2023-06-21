class GenresController < ApplicationController

    get "/genres" do 
        genres = Genre.all
        genres.to_json(include: :shows)
    end


    post "/genres" do
        genre = Genre.create( 
            name: params[:name]
        )
        genre.to_json(include: :shows)
    end

    patch "/genres/:id" do 
        genre = Genre.find(params[:id])
        genre.update(
            name: params[:name]
        )
    end

    delete '/genres/:id' do 
        genre = Genre.find(params[:id])
        genre.destroy
    end


end