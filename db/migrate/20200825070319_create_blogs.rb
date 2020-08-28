class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.integer :genre_id
      t.string :title
      t.string :image_id
      t.text :sentence
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
