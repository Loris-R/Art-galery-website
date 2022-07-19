class ArtFairExhibitor < ApplicationRecord
  has_many_attached :phots
  belongs_to :art_fair
end
