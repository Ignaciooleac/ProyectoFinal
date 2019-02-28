Rails.application.routes.draw do
  get 'clients/index'
  get 'clients/show'
  get 'clients/new'
  get 'clients/edit'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
