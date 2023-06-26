class GenresController < ApplicationController

    get "/genres" do 
        genres = Genre.all
        genres.to_json(include: :shows)
    end

    get "genres/:id" do
        genre = Genre.find(params[:id])
        genre.to_json(include: :shows)
    end

    post '/genres/:genre_id/shows' do
        genre = Genre.find(params[:genre_id])
        show = genre.shows.create(
          title: params[:title],
          seasons: params[:seasons],
          episodes: params[:episodes],
          language: params[:language],
          ongoing: params[:ongoing],
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
          ongoing: params[:ongoing],
        )
        show.to_json
      end

      delete "/genres/:id" do
        genre = Genre.find(params[:id])
        genre.destroy
        #if line 44 is not included, when deleting i get the following error => unexpected run time errors: unexpected end of JSON input, syntaxError: Unexpected end of JSON input
        genre.to_json  
      end
end