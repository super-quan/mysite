Rails.application.routes.draw do
  resource :session, only: [ :new, :create, :destroy ]
  resource :registration, only: [ :new, :create ]
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :passwords, param: :token
  get "/products", to: "products#index"
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  resource :unsubscribe, only: [ :show ]


  root "products#index"

end


