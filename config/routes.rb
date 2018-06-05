Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :products
  resources :upvotes, only: [ :create, :destroy]

   get "/team" => "pages#team"
   get "/contact" => "pages#join_us"

  # # read routes
  # get "/products" => "products#index"
  # get "/products/:id" => "products#show"

  # # create routes
  # get "/products/new" => "products#new"
  # post "products" => "products#create"

  # # update routes
  # get "/products/:id/edit" => "products#edit"
  # patch "products/:id" => "products#update"

  # # delete routes
  # delete "/products/:id" => "products#destroy"
  # patch "products/:id" => "products#update"
end
