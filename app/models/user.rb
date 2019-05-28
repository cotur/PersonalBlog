class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :post, :dependent => :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_attached_file :image, styles: {medium: "200x200>"}, default_url: "https://thebenclark.files.wordpress.com/2014/03/facebook-default-no-profile-pic.jpg?w=200"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
