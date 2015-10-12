class CreateRegion < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.column :region_name, :string

      t.timestamps
    end
  end
end
