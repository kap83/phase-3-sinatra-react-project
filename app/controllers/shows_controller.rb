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



    delete "/shows/:id" do
      show = Show.find(params[:id])
      show.destroy
      #if line 44 is not included, when deleting i get the following error => unexpected run time errors: unexpected end of JSON input, syntaxError: Unexpected end of JSON input
      show.to_json
    end

end