Rails.application.routes.draw do
  resources :commits, only: [:index, :show, :create]
end
