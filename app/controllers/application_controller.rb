class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/shows" do
    shows = Show.all 
    shows.to_json(include: :genre)
  end

end
