class RemoveIndexFromMusics < ActiveRecord::Migration[5.2]
  def change
    remove_index :musics, name: "index_musics_on_user_id"
  end
end
