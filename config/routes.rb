Rails.application.routes.draw do

    resources :rooms, only: [:index, :show, :update]
    resources :customers, only: [:index, :show, :create, :destroy, :update]
    resources :hotels, only: [:index, :show]
    resources :reviews

    get "/occupied", to: "rooms#occupied"
    get "/unoccupied", to: "rooms#unoccupied"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

end
