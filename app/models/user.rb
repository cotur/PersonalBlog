class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :post, :dependent => :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
