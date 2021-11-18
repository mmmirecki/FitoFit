Rails.application.routes.draw do
  root 'trips#new'
  resources :trips
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
