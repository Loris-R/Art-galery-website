class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.save
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:title, :first_name, :last_name, :status, :email, :category)
  end
end
