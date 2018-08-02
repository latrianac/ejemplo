Rails.application.routes.draw do
  get 'hola/inicio'
  root 'hola#index'

  get 'welcome/index'
  root 'welcome#index'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
