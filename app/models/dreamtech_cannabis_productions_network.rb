class DreamTech_Cannabis_Productions_Network < ActiveRecord::Base
    belongs_to :user
    belongs_to :grow_rooms
    has_many :cannabis_plants #, through: :grow_rooms
    has_many :production_networks #, through: :cannabis_plants

    validates :user_id, presence: true
    validates :cannabis_id, presence: true
    validates :grow_room_id, presence: true
end