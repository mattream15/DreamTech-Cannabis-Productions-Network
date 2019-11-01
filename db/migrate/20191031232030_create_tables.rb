class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :name
        t.string :email
        t.string :address
        t.string :password_digest
    end

    create_table :grow_rooms do |t|
        t.string :name
        t.integer :user_id
    end
  
    create_table :cannabis_plants do |t|
        t.string :cannabis_species
        t.string :variety_name
        t.string :soil_type
        t.string :nutrients
        t.integer :weight_of_flower_produced
        t.integer :user_id
    end

    create_table :grow_rooms_cannabis_plants do |t|
        t.integer :grow_room_id
        t.integer :cannabis_plant_id
    end
  end
end
