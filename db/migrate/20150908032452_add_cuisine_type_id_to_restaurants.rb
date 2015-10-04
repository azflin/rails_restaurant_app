class AddCuisineTypeIdToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :cuisine_type_id, :integer
  end
end
