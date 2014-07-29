class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
