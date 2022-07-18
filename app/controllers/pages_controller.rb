class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :art_fair, :art_fair_programm, :design, :design_programm]

  def home
    @partner = Partner.all.last
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

  def registration
    @titles = Registration::TITLES
    @status = Registration::STATUS
    @categories = Registration::CATEGORIES
  end
end
