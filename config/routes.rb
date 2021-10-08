Rails.application.routes.draw do  
  ## Define the root view when website loads
  root "stores#index"
  
  ## Stores CRUD routes
  # Get
  get '/stores', to: 'stores#index', as: 'stores'
  # Create
  get '/stores/new', to: 'stores#new', as: 'stores_new'
  post '/stores', to: 'stores#create'
  # Edit
  get '/stores/:id/edit', to: 'stores#edit', as: 'edit_store'
  get '/stores/:id', to: 'stores#show', as: 'store'
  patch '/stores/:id', to: 'stores#update'
  # Delete
  delete '/stores/:id', to: 'stores#delete'

  ## Products CRUD routes
  # Get
  get '/products', to: 'products#index', as: 'products'
  # Create
  get '/products/new', to: 'products#new', as: 'products_new'
  post '/products', to: 'products#create'
  # Edit
  get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  get '/product/:id', to: 'products#show', as: 'product'
  patch '/product/:id', to: 'products#update'
  # Delete
  delete '/product/:id', to: 'products#delete'

  ## Categories CRUD routes
  # Get
  get '/categories', to: 'categories#index', as: 'categories'
  # Create
  get '/categories/new', to: 'categories#new', as: 'categories_new'
  post '/categories', to: 'categories#create'
  # Edit
  get '/categories/:id/edit', to: 'categories#edit', as: 'edit_category'
  get '/categories/:id', to: 'categories#show', as: 'category'
  patch '/categories/:id', to: 'categories#update'
  # Delete
  delete '/categories/:id', to: 'categories#delete'

  ## View readme page
  get '/readme', to: 'readme#index'
end
