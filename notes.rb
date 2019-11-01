create_table :dreamtech do |t|
    t.foreign_key :user_id
end

create_table :users do |t|
    t.string :name
      t.string :email
      t.string :address
    has_many :dream
end

create_table :grow_rooms do |t|
    t.string :name
    t.integer :lighting
    t.integer :room_temperature
    t.integer :room_humidity
  t.string :ventilation_system
    t.foreign_key :user_id
end

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
    t.foreign_key :grow_room_id
end

class AddPasswordToUsers < ActiveRecord::Migration
    def change
      add_column :users, :password_digest, :string
    end
  end
