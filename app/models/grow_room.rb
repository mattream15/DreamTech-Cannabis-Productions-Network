class GrowRoom < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :cannabis_plants

    validates :type_of_light, presence: true
    validates :room_temperature, presence: true
    validates :relative_humidity, presence: true
end