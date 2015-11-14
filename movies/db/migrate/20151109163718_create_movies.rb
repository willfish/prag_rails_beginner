class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.float :total_gross
      t.text :description
      t.datetime :released_on

      t.timestamps null: false
    end
  end
end
