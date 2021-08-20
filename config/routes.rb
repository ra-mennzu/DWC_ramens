Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :customers, only: [:edit,:update]
  get 'customers/my_page' => 'customers#show'


end
