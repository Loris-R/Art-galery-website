class Exhibitor < ApplicationRecord
  has_many :exhibitor_categories
  has_many :categories, through: :exhibitor_categories, dependant: :destroy
  has_many_attached :photos
end
