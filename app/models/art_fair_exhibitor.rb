class ArtFairExhibitor < ApplicationRecord
  has_many_attached :photos
  belongs_to :art_fair
end
