class CreateMusicLists < ActiveRecord::Migration[5.2]
  def change
    create_table :music_lists do |t|
      t.integer :rating
      t.belongs_to :music
      t.belongs_to :list

      t.timestamps 
    end
  end
end
