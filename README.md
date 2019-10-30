WE ARE SAVED

Project Requirements
1. Build an MVC Sinatra Application - DONE
2. Use ActiveRecord with Sinatra - DONE
3. Use multiple models - DONE
4. Use at least one has_many and belongs_to - DONE
5. Must have user accounts - DONE
6. Validate uniqueness - DONE
7. CRUD - DONE
8. Edit and delete your own resources - DONE
9. Validate user input - DONE
10. BONUS - user.errors.full_messages gives you an array with two errors
-"Name has already been taken"
-"Email has already been taken"


DreamTech Cannabis Productions Network

MVC Sinatra Application

Users(producers)

**user information
	-producer_name
	-email
	-address

**relationships
has_many :dreamtech_cannabis_productions_networks
has_many :grow_rooms, through :dreamtech_cannabis_productions_networks
has_many :cannabis_plants, through :dreamtech_cannabis_productions_networks
has_many :networks, through :dreamtech_cannabis_productions_networks

DreamTech Cannabis Productions Network

**production information
	-producer_name
	-cannabis_plant_seeds_purchased
	-cannabis species
	-variety_name
	-grow_rooms

**relationships
	belongs_to :users
	has_many: grow_rooms
	has_many: networks
	has_many: cannabis_plants, through :grow_rooms

Grow Room

**grow information
	-type_of_room
	-dimensions(length, width, height)
	-Cannabis_species(C. indica, C. sativa, C. ruderalis)
	-variety_name

**grow settings
	-lighting
	-room_temperature
	-room_humidity
	-ventilation
	-nutrients
	-grow_style

**relationships
	has_many: cannabis_plants
	belongs_to :users, through :dreamtech_cannabis_productions_networks

Cannabis Plant

**plant information
	-column_number
	-row_number
	-Cannabis species(C. indica, C. sativa, C. ruderalis)
	-variety_name
	-height
	-width
	-user_id

**harvest results 
	-total weight of flower produced
	-weight of leaves produced
	-weight of stalks produced
	-weight of roots produced

**soil information
	-type of soil
	-weight of soil
	-pH of soil
	
**relationships
	belongs_to: users, through :dreamtech_cannabis_productions_networks
	belongs_to: grow room

Network

**product to be sold
	-type of product(drop down - flower, leaves, stalks, roots)
	-weight of product
	-buyer

**relationships
	belongs to :users, through :dreamtech_cannabis_productions_networks



$$Future Add-Ins
	-grams/weight of product per crop
	-grams/weight of product per square-feet
	-grams/weight of product per cubic-feet
	-grams/weight of product per Watt
	-grams/weight of product per light (kilowatt-hour)


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

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :producer_name
      t.string :email
      t.string :address
    end
  end
end

class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
  end
end
