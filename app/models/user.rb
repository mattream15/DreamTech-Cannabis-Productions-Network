class User < ActiveRecord::Base
    has_many :dreamtech_cannabis_productions_networks
    has_many :cannabis_plants #, through: :dreamtech_cannabis_productions_networks
    has_many :production_networks #, through: :dreamtech_cannabis_productions_networks
    belongs_to :grow_rooms #, through: :dreamtech_cannabis_productions_networks


    has_secure_password
    validates :address, uniqueness: true
    validates :email, uniqueness: true
    validates :name, presence: true
end