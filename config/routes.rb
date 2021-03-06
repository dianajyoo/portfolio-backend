Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :projects, only: [:index, :show, :create, :update, :destroy]
      resources :photos, only: [:index, :show, :create, :update, :destroy]
      resources "contacts", only: [:new, :create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
