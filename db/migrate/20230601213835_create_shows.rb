class CreateShows < ActiveRecord::Migration[6.1]
    def change
      create_table :shows do |t|
        t.string :title 
        t.belongs_to :genre, foreign_key: true
        t.integer :seasons 
        t.integer :episodes
        t.string :language
      end
    end
  end
  