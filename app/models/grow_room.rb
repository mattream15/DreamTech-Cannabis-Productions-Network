class GrowRoom < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :cannabis_plants
end