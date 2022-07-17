Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "pages#home"

  get "art-fair", to: "pages#art_fair"
  get "art-fair-programm", to: "pages#art_fair_programm"
  get "art-fair-exhibitors", to: "art_fair_exhibitors#index"
  get "design", to: "pages#design"
  get "design-programm", to: "pages#design_programm"
  get "design-exhibitors", to: "design_exhibitors#index"
  get "registration", to: "pages#registration"

  resources :partners, only: %i(index new edit update create destroy)
end
