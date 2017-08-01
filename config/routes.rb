Rails.application.routes.draw do

  resources :restaurants do
    resources :reservations
  end

  resource :users, only: %i(create new) #same as [:create, :new]
  resource :sessions, only: %i(create new destroy)

  root 'restaurants#index'

end
