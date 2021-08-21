Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :customers, only: [:edit,:update]
  get 'customers/my_page' => 'customers#show'
  get '/customers/edit' => 'customers#edit'
  patch '/customers' => 'customers#update'

end
