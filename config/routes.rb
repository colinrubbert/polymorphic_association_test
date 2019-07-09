Rails.application.routes.draw do
  
  root to: 'clients#index'

  resources :clients do
    resources :admissions
    resources :notes
    resources :legals
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
