Rails.application.routes.draw do

  devise_for :admins, :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   namespace :admin do
    resources :items, :orders, :sessions, :order_details
  end


  get 'customers/my_page' => 'customers#show'
  get '/customers/edit' => 'customers#edit'
  patch '/customers' => 'customers#update'

  resources :items, only: [:index, :show]

  # patch '/cart_items/:id' => 'cart_items#update'





end
