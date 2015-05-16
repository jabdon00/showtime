class CreateMovieComments < ActiveRecord::Migration
  def change
    create_table :movie_comments do |t|
      t.string :comment
      t.integer :user_id
      t.integer :movie_id

      t.timestamps null: false
    end
  end
end
