Rails.application.routes.draw do
  resources :productos
  resources :usuarios
  resources :seccions
  resources :estados
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
