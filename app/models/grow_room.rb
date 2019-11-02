class GrowRoom < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :cannabis_plants

    validates :user_id, uniqueness: true
    validates :grow_room_id, presence: true
end