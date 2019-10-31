class CreateGrowRooms < ActiveRecord::Migration
  def change
    create_table :grow_rooms do |t|
    t.integer :lighting
	  t.integer :room_temperature
	  t.integer :room_humidity
    t.string :ventilation_system
    end
  end
end
