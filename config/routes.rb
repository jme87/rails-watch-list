Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [ :index, :new, :create, :show ] do
    resources :bookmarks, only: [ :new, :create ]
  end
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # get 'lists/:id', to: 'lists#show', as: 'list'
  # post 'lists', to: 'lists#create'

  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:id/bookmarks', to: 'bookmarks#create'
  delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
