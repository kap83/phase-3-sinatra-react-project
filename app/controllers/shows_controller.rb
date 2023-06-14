class ShowsController < ApplicationController

    get "/shows" do 
        shows = Show.all
        shows.to_json(include: :genre)
    end

    # post "/shows" do 
    #   show = Show.create(
    #     title: params[:title],
    #     genre_id: params[:genre_id],
    #     seasons: params[:seasons],
    #     number_of_episodes: params[:number_of_episodes],
    #     original_language: params[:original_language],
    #     ongoing: params[:ongoing]
    #   )
    # end

    delete "/shows/:id" do
      show = Show.find(params[:id])
      show.destroy
      show.to_json
    end

end