Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: { sessions: 'admin/sessions' }
      resources :users
      resources :posts

      root 'home#index'
    end
  end
end
