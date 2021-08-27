Rails.application.routes.draw do


  # devise_for :customers, skip: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  namespace :admin do
    root to: 'homes#top'
    resources :customers,only: [:index, :show, :edit, :update]
    resources :orders, only: [:index, :show, :update] do
    resources :order_items, only: [:update]
    end
    resources :items, only: [:new, :create, :index, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
  end

  scope module: :public do
    root to: "homes#top"
    get "/about" => "homes#about", as: "about"
    resource :customers, only: [:show, :edit, :update, :unsubscribe, :withdraw]
    post '/orders/confirm' => 'orders#confirm'
    get '/orders/complete' => 'orders#complete'

    resources :orders, only: [:new, :create, :index, :show]
    resources :items, only: [:index, :show]
    resources :cart_items, only: [:index, :create, :update, :destroy, :destroy_all]
    resources :addresses, only: [:index, :create, :destroy, :edit, :update]
    get 'customers/my_page' => 'customers#show'

  end

  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, controllers: {
    sessions: "public/sessions",
    passwords: "public/passwords"
  }



end

