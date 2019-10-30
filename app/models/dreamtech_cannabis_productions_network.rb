class DreamTech_Cannabis_Productions_Network < ActiveRecord::Base
    belongs_to :user

    validates :name, presence: true
    validates :crop, presence: true
    validates :allocated_location, presence: true
end