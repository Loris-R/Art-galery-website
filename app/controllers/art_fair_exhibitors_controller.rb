class ArtFairExhibitorsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @art_fair_exhibitors = ArtFairExhibitor.all.order("id ASC")
  end
end
