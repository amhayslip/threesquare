class AddImageToLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :image_url, :text
  end
end
