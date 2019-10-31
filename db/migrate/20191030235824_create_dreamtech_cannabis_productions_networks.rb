class CreateDreamtechCannabisProductionsNetworks < ActiveRecord::Migration
  def change
    create_table :dreamtech_cannabis_productions_network do |t|
      t.integer :user_id
      t.integer :cannabis_id
    end
  end
end
