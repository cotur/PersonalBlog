class Category < ApplicationRecord
    validates_presence_of :title
    
    has_many :post, :dependent => :destroy
end
