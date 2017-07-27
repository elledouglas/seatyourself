Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :restaurants do
resources :reservations
end
resource :users, only: %i(create new) #same as [:create, :new]
resource :sessions, only: %i(create new destroy)

  root 'restaurants#index'


end
