class GenresController < ApplicationController

    # def join_tables 
    #     genre = Genre.find_by(params[:id])
    #     Show.where(genre_id: genre_id)
    #    genres_with_shows = Genre.joins(:shows).where(shows: {genre_id: genre_id})
    # end

    get "/genres" do 
        genres = Genre.all
        genres.to_json(include: :shows)
    end

    # get "/genres/:id" do
    #     genre = Genre.find(params[:id])
    #     shows = genre.shows
    #     shows.to_json
    #   end

    post "/genres" do
        genre = Genre.create( 
            name: params[:name]
        ).to_json
    end

    patch "/genres/:id" do 
        genre = Genre.find(params[:id])
        genre.update(
            name: params[:name]
        )
    end


end