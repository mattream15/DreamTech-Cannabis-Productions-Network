class User < ActiveRecord::Base
    has_many :dreamtech_cannabis_productions_networks
    has_secure_password

    
    validates :email, uniqueness: true
    validates :name, presence: true
end