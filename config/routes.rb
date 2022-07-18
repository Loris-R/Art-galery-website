Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "pages#home"

  get "art-fair", to: "pages#art_fair"
  get "art-fair-programm", to: "pages#art_fair_programm"
  get "design", to: "pages#design"
  get "design-programm", to: "pages#design_programm"

  resources :art_fair_exhibitors, only: %i(index)
  resources :design_exhibitors, only: %i(index)
  resources :partners, only: %i(index new edit update create destroy)
  resources :registration, only: %i(new create)
end
