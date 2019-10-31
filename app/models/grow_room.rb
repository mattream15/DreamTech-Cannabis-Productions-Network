class Grow_Room < ActiveRecord::Base
    has_and_belongs_to_many :dreamtech_cannabis_productions_networks
    has_many :cannabis_plants, through: :dreamtech_cannabis_productions_networks

    validates :lighting, presence: true
    validates :room_temperature, presence: true
    validates :room_humidity, presence: true
    validates :ventilation_system, presence: true
end