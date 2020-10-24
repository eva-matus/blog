Rails.application.routes.draw do
  #get 'articles/index'
  root 'articles#index'
  get 'articles/dashboard'
  post 'articles/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
