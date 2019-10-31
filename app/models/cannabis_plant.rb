class Cannabis_Plant < ActiveRecord::Base
    belongs_to :dreamtech_cannabis_productions_networks
    has_one :production_networks
    belongs_to :users, through: :dreamtech_cannabis_productions_networks
	belongs_to :grow_rooms, through: :dreamtech_cannabis_productions_networks

    validates :cannabis_species, presence: true
    validates :variety_name, presence: true
    validates :column_number, presence: true
    validates :row_number, presence: true
    validates :grow_room_id, presence: true
    validates :user_id, presence: true
end