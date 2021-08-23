Rails.application.routes.draw do

  devise_for :admins, :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  namespace :admin do
    resources :items, only: [:new, :create, :index, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]

  end

  # resources :customers, only: [:edit,:update]
  get 'customers/my_page' => 'customers#show'
  get '/customers/edit' => 'customers#edit'
  patch '/customers' => 'customers#update'


end
