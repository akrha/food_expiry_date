Rails.application.routes.draw do
  resources :foods
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/show'
  devise_for :users, :controllers => {
    :registrations => "registrations"
  }

end
