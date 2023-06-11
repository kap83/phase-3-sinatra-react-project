require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/shows" do
    shows = Show.all 
    shows.to_json(include: :genre)
  end


  #might have to post through /genres and set up in the models that genre accepts_nested_attributes_for :shows
  post "/shows" do
    show = Show.create(
      title: params[:title],
      genre_id: params[:genre_id],
      seasons: params[:seasons],
      number_of_episodes: params[:number_of_episodes],
      original_language: params[:original_language],
      ongoing: params[:ongoing]
    )
    show.to_json
  end

  delete "/shows/:id" do
    show = Show.find(params[:id])
    show.destroy
    show.to_json
  end

  patch '/shows/:id' do
    show = Show.find(params[:id])
    show.update(
      title: params[:title],
      genre_id: params[:genre_id],
      seasons: params[:seasons],
      number_of_episodes: params[:number_of_episodes],
      original_language: params[:original_language],
      ongoing: params[:ongoing]
    )
    #possibly (include: :genre)
    show.to_json
  end

end