Rails.application.routes.draw do
  resources :nusuarios
  resources :pedidos
  resources :favoritos
  resources :productos
  get "productos/seccion/:seccion_id" => 'productos#seccion'
  resources :seccions
  resources :estados
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
