class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :year
      t.string :pg
      t.integer :minute
      t.integer :userrate
      t.integer :imdbrate
      t.text :plot
      t.string :director
      t.string :writers
      t.string :stars
      t.string :poster

      t.timestamps null: false
    end
  end
end
