class Exhibitor < ApplicationRecord
  has_many :exhibitor_categories, dependent: :destroy
  has_many :categories, through: :exhibitor_categories
  has_many_attached :photos
end
