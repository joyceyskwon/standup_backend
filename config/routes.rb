Rails.application.routes.draw do
  namespace :api do
    namespase :v1 do
      resources :users
      resources :posts
    end
  end
end
