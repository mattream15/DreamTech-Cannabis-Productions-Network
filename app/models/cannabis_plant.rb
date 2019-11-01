class CannabisPlant < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :grow_rooms


    #validates :cannabis_species, presence: true
    #validates :variety_name, presence: true
    #validates :grow_room_id, presence: true
    #validates :user_id, presence: true
end