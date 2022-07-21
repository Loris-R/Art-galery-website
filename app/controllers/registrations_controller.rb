class RegistrationsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @titles = Registration::TITLES
    @status = Registration::STATUS
    @categories = Registration::CATEGORIES
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save!
      if @registration.category == "Art"
        mail = RegistrationMailer.with(registration: @registration).new_register.deliver_now
        redirect_to art_fair_path
      else
        redirect_to design_path
      end
      flash[:notice] = "Thank you, your registration has been sent !"
    else
      render "new"
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:title, :first_name, :last_name, :status, :email, :category)
  end
end
