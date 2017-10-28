Rails.application.routes.draw do
  get 'photos/new'

  get 'photos/edit'

  get 'photos/show'

  get 'photos/index'

  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
