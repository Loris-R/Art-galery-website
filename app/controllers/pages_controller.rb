class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :art_fair, :art_fair_programm, :design, :design_programm]

  def home
    @partner = Partner.all.last
  end

  def art_fair
    @about = Category.find_by(name: "Art Fair").text
  end

  def art_fair_programm
    @programm = Category.find_by(name: "Art Fair").programm
  end

  def design
    @about = Category.find_by(name: "Design").text
  end

  def design_programm
    @programm = Category.find_by(name: "Design").programm
  end
end
