Rails.application.routes.draw do
  # devise_for :customers, skip: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :customers, only:[:sessions,:passwords]


  devise_scope :customers do
    get '/customers/cancel', to: 'devise/registrations#cancel'
    get '/customers/sign_up', to: 'devise/registrations#new'
    patch '/customers', to: 'devise/registrations#update'
    put '/customers', to: 'devise/registrations#update'
    delete '/customers', to: 'devise/registrations#destroy'
    post '/customers', to: 'devise/registrations#create'
  end


  scope module: 'public' do
    resource :customers, only: [:edit,:update]
    get 'customers/my_page' => 'customers#show'
    resources :items, only: [:index,:show]
  end



end