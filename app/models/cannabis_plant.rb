class CannabisPlant < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :grow_rooms

    validates :strain, presence: true
    validates :user_id, uniqueness: true
end