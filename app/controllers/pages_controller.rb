class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :art_fair, :art_fair_programm, :design, :design_programm]

  def home
    if params[:locale].nil?
      redirect_to "/en"
    end
    @partner = Partner.all.last
    @about = About.all.last
  end

  def art_fair
    @art_fair = ArtFair.all.last
  end

  def art_fair_programm
    @art_fair = ArtFair.all.last
  end

  def design
    @design = Design.all.last
  end

  def design_programm
    @design = Design.all.last
  end
end
