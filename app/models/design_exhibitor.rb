class DesignExhibitor < ApplicationRecord
  has_many_attached :photos
  belongs_to :design
end
