Jessicaejulio::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  root to: 'home#index'
  get '/gallery' => 'home#gallery'

  resource :guests
end
