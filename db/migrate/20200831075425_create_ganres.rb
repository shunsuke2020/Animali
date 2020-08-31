class CreateGanres < ActiveRecord::Migration[5.2]
  def change
    create_table :ganres do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
