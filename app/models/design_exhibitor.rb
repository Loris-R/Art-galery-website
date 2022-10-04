class DesignExhibitor < ApplicationRecord
  has_one_attached :photo
  belongs_to :design
end
