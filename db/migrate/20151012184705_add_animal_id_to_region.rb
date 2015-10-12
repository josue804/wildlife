class AddAnimalIdToRegion < ActiveRecord::Migration
  def change
    add_column :regions, :animal_id, :integer
  end
end
