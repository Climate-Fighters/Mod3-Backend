Rails.application.routes.draw do
  resources :resource_scenarios
  resources :scenarios
  resources :questions
  resources :responses
  resources :country_resources
  resources :resources
  resources :countries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
