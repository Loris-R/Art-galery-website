class DesignExhibitorsController < ApplicationController
  def index
    @design_exhibitors = DesignExhibitor.all
  end
end
