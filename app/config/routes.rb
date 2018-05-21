Rails.application.routes.draw do
  get '/test', to: 'static_pages#test'

  root to: 'static_pages#index'
  resources :text_garblings, only: %i(index)
end
