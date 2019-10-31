class DreamTech_Cannabis_Productions_Network < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :grow_rooms
    has_one :cannabis_plants, through: :grow_rooms
    has_one :production_networks, through: :cannabis_plants

    validates :user_id, presence: true
    validates :cannabis_id, presence: true
    validates :grow_room_id, presence: true
end