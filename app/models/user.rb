class User < ActiveRecord::Base
    has_many :grow_rooms
    has_many :cannabis_plants

    has_secure_password
    validates :address, uniqueness: true
    validates :email, uniqueness: true
    validates :name, presence: true
end