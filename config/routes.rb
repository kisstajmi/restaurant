Restaurant::Application.routes.draw do
  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  

  resources :places
  root to: "places#index"
end
