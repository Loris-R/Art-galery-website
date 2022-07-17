class ArtFairExhibitorsController < ApplicationController
  def index
    @art_fair_exhibitors = ArtFairExhibitor.all
  end
end
