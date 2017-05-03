Rails.application.routes.draw do
  root 'staticpages#index'
  get 'staticpages/about'
  get 'staticpages/contact'
  resources :places 
  resources :insideplaces 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
