class AddRestaurantReferences < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :restaurant, index: true, foreign_key: true
  end
end
