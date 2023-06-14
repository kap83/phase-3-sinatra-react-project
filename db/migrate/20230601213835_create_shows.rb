class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title 
      t.integer :genre_id
      t.integer :seasons 
      t.integer :number_of_episodes
      t.string :original_language
      t.boolean :ongoing

    end
  end
end
