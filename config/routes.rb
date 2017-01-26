Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "hot_reads#index"
  
  resources :hot_reads, only: [:index]
  
  namespace :api do
    namespace :v1 do
      resources :hot_reads, only: [:index, :create]
    end
  end
end
