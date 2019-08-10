class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :text
      t.timestamps
      t.belongs_to :user
      t.belongs_to :category
    end
  end
end
