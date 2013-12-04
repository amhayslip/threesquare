class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :category
      t.string :neighborhood
      t.string :site_url

      t.timestamps
    end
  end
end
