Rails.application.routes.draw do
  get '/test', to: 'static_pages#test'

  root to: 'static_pages#test'
  resources :text_garblings, only: %i(index)
end
