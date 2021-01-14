Rails.application.routes.draw do
  post 'tax', to: 'tax#compute'
  post 'employeetax', to: 'employeetax#create'
  get 'employeetax', to: 'employeetax#index'
  get 'employeetax/:id', to: 'employeetax#show'
  patch 'employeetax/:id', to: 'employeetax#update'
  delete 'employeetax/:id', to: 'employeetax#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
