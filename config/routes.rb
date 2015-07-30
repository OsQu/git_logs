Rails.application.routes.draw do
  resources :commits, only: [:index, :show, :create] do
  	collection do
  		get 'search'
  	end
  end
end
