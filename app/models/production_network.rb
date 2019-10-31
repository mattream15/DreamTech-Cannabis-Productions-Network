class Productions_Network < ActiveRecord::Base
    belongs_to :cannabis_plants
    belongs_to :users #, through: :dreamtech_cannabis_productions_networks
    belongs_to :dreamtech_cannabis_productions_network #, through: :cannabis_plants

    validates :product_type, presence: true
    validates :weight_of_product, presence: true
    validates :buyer, presence: true
    validates :dreamtech_cannabis_productions_network_id, presence: true
    validates :user_id, presence: true
end