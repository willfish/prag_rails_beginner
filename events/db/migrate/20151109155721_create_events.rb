class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.float :price
      t.text :description
      t.datetime :starts_at

      t.timestamps null: false
    end
  end
end
