Rails.application.routes.draw do
  get '/test', to: 'static_pages#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
