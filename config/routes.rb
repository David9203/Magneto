Rails.application.routes.draw do
  resources :caracters
  resources :regions do
    resources :municipios
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
