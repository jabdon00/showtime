class AddSubCategoryToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :subcategory_id, :integer
  end
end
