Rails.application.routes.draw do
  resources :magazines
  resources :oenologists
  devise_for :users
  resources :strains
  resources :wines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'wines#index'
  authenticated do
    root to: "wines#index", as: :authenticated_root
  end
end
