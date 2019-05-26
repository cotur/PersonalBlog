class Post < ApplicationRecord
  
  validates_presence_of :title
  validates_presence_of :content
  validates_presence_of :category

  belongs_to :category
  belongs_to :user
end
