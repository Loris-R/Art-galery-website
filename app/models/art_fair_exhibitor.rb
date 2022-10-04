class ArtFairExhibitor < ApplicationRecord
  has_one_attached :photo
  belongs_to :art_fair
end
