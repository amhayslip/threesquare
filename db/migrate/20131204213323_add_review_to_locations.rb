class AddReviewToLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :review, :text
  end
end
