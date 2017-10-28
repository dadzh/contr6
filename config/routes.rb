Rails.application.routes.draw do
 ActiveAdmin.routes(self)
  devise_for :users
  get 'comments/create'
	
	root 'photos#index'
	resources :users
  resources :photos do 
  	resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
