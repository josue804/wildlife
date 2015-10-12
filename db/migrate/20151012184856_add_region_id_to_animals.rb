class AddRegionIdToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :region_id, :integer
    add_column :sightings, :animal_id, :integer
  end
end
