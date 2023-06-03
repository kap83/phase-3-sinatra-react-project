class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/shows" do
    # { message: "Good luck with your project!" }.to_json
    shows = Show.all 
    shows.to_json(include: :genre)
  end

  get "/genres" do 
    genres = Genre.all
    genres.to_json
  end


end
