Rails.application.routes.draw do
  root 'activities#new'
  resources :trips
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
