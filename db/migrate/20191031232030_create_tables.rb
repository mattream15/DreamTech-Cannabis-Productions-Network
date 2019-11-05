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
        t.string :type_of_light
        t.integer :room_temperature
        t.integer :relative_humidity
        t.integer :user_id
    end
  
    create_table :cannabis_plants do |t|
        t.string :strain
        t.integer :number_of_cannabis_seeds
        t.string :soil_type
        t.string :nutrients
        t.integer :user_id
    end

    create_table :grow_rooms_cannabis_plants do |t|
        t.integer :grow_room_id
        t.integer :cannabis_plant_id
    end
  end
end
