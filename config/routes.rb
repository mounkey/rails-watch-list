Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  get 'list/index'
  get 'list/show'
  get 'list/new'
  get 'list/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :list, only: [:new, :create, :show, :index ]
end
