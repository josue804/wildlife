class CreateAnimal < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.column :species, :string

      t.timestamps
    end
  end
end
