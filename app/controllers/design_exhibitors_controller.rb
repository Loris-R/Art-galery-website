class DesignExhibitorsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @design_exhibitors = DesignExhibitor.all.sort_by { |h| h[:artist_name] }
  end
end
