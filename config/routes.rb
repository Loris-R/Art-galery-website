Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

    scope "(:locale)", locale: /en|fr/ do
    root to: "pages#home"
    get "art_fair", to: "pages#art_fair"
    get "art_fair-programm", to: "pages#art_fair_programm"
    get "design", to: "pages#design"
    get "design-programm", to: "pages#design_programm"

    resources :art_fair_exhibitors, only: %i(index)
    resources :design_exhibitors, only: %i(index)
    resources :partners, only: %i(index new edit update create destroy)
    resources :registrations, only: %i(new create)
  end
end
