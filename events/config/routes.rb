Rails.application.routes.draw do
  root 'events#index'
  # get 'events' => 'events#index'
  # get 'events/new' => 'events#new', as: 'new_event'
  # post 'events/create' => 'events/#create', as: 'post_event'
  # get 'events/:id' => 'events#show', as: 'event'
  # get 'events/:id/edit' => 'events#edit', as: 'edit_event'
  # patch 'events/:id' => 'events#update'
  resources :events
end
