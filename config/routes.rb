Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "pages#home"
  
  get "art-fair", to: "pages#art_fair"
  get "design", to: "pages#design"
  
  resources :partners, only: %i(index new edit update create destroy)
  resources :exhibitors, only: %i(new edit update create destroy)
end
