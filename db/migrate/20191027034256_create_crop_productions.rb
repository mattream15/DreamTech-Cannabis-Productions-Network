class CreateDreamTechCannabisProductionsNetwork < ActiveRecord::Migration
  def change
    create_table :dreamtech_cannabis_productions_network do |t|
      t.string :cannabis_species
      t.string :variety_name
      t.integer :cannabis_seeds_purchased
      t.integer :grow_room
      t.integer :user_id
      t.timestamps
    end
  end
end
