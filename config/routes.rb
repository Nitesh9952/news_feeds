Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  root to: 'v1/newsfeeds#index'

  namespace :v1 do
  	resources :newsfeeds, controller: 'newsfeeds', only: [:index]
  end
end
