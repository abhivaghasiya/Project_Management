Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users


  # get 'home', to: 'pages#home', as: :home

  resources :notes
  resources :projects_users
  resources :users
  resources :tasks
  resources :projects do
    resources :tasks
  end

  resources :projects do
    member do
      put :active
      put :deactive
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
