Rails.application.routes.draw do
  resources :quotes
  get 'home/index' => 'home#index', as: :home
	root to: 'home#index'
end
