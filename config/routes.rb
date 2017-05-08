Rails.application.routes.draw do
  devise_for :users
  root 'staticpages#index'
  get 'staticpages/about'
  get 'staticpages/contact'
  resources :places do
    resources :photos, only: :create
  end
  resources :insideplaces 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
