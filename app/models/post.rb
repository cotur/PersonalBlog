class Post < ApplicationRecord
  
  validates :title, length: { in: 5..150 },presence: true
  validates_presence_of :content
  validates_presence_of :category

  belongs_to :category
  belongs_to :user


  has_attached_file :image, styles: {medium: "300x225>", thumb: "200x150"}, default_url: "https://dubsism.files.wordpress.com/2017/12/image-not-found.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
