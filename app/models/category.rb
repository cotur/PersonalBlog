class Category < ApplicationRecord
    validates :title, length: { in: 5..50 },presence: true
    
    has_many :post, :dependent => :destroy
end
