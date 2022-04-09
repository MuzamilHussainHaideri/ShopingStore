class Product < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :image

  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
  validates :name, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  validates :price, length: { maximum: 7 }

end
