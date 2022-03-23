class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :list_title
      t.belongs_to :user

      t.timestamps 
    end
  end
end
