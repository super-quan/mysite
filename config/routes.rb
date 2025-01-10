Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  get "/products", to: "products#index"
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  resource :unsubscribe, only: [ :show ]


  root "products#index"

end


