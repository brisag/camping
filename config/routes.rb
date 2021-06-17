Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :parks, only: :index
      resources :forecast, only: :index
      resources :campground, only: :index
    end
  end
end
