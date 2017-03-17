class StreetArt < ApplicationRecord
  belongs_to :user
  has_many :liked_street_arts
  has_many :liked_by, through: :liked_street_arts, source: :user
  mount_uploader :image, ImageUploader
end
