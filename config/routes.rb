Rails.application.routes.draw do
  resources :bookings

    resources :rooms, only: [:index, :show, :update]
    resources :customers, only: [:show, :create, :update]
    resources :hotels, only: [:index, :show]
    resources :reviews

    get "/customers", to: "admin#customers"
    delete "/customers/:id", to: "admin#delete_customer"
    get "/occupied", to: "rooms#occupied"
    get "/unoccupied", to: "rooms#unoccupied"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
    get "/my-bookings/:id", to: "customers#my_bookings"

    # Customer booking
    post "/book-room/:id", to: "customers#book_room"

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

end
