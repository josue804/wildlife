class CreateSighting < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :longitude, :integer
      t.column :latitude, :integer

      t.timestamps
    end
  end
end
