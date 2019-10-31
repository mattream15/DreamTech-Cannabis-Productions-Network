class CreateProductionNetworks < ActiveRecord::Migration
  def change
    create_table :production_networks do |t|
      t.string :product_type
      t.integer :weight_of_product
      t.string :buyer
      t.integer :dreamtech_cannabis_productions_network_id
      t.integer :user_id
    end
  end
end
