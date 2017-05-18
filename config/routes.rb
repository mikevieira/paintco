Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root 'staticpages#index'
  match '/contacts',  to: 'contacts#new',  via: 'get'
  resources :contacts, only: [:new, :create]
  get 'staticpages/about'
  get 'staticpages/contact'
  resources :places do
    resources :photos, only: [:create, :destroy]
  end
  resources :insideplaces 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
