class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :url
      t.string :name
      t.string :mem
      t.string :img
      t.string :bio
      t.string :town
      t.string :per

      t.timestamps
    end
  end
end
