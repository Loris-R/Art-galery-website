class DesignExhibitorsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @design_exhibitors = DesignExhibitor.all
  end
end
