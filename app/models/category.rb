class Category < ApplicationRecord
    has_many :post, :dependent => :destroy
end
