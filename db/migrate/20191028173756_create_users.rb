class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :producer_name
      t.string :email
      t.string :address
    end
  end
end
