class CannabisPlant < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :grow_rooms

    validates :strain, presence: true
    validates :number_of_cannabis_seeds, presence: true
end