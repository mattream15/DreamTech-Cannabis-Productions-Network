class CreateCannabisPlants < ActiveRecord::Migration
  def change
    create_table :cannabis_plants do |t|
      t.string :cannabis_species
	    t.string :variety_name
      t.integer :column_number
	    t.integer :row_number
      t.string :grow_style
      t.string :soil_type
      t.integer :pH_of_soil
      t.string :nutrients
      t.integer :weight_of_flower_produced
      t.integer :weight_of_leaves_produced
      t.integer :weight_of_stalks_produced
      t.integer :weight_of_roots_produced
      t.integer :grow_room_id
      t.integer :user_id
    end
  end
end
