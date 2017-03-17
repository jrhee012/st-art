class User < ApplicationRecord
  has_many :street_arts
  has_many :liked_street_arts
  has_many :likes, through: :liked_street_arts, source: :street_arts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
