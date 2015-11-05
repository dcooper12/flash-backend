Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  post    "signup", to: "registrations#create"
  delete  "signup", to: "registrations#destroy"

  post    "login",  to: "registrations#login"

  ## Routes for managing decks:
  get     "user/:username/decks",     to: "decks#show",     as: "decks"
  post    "user/:username/decks",     to: "decks#create"
  put     "user/:username/decks/:id", to: "decks#update"
  delete  "user/:username/decks/:id", to: "decks#destroy"


  ## Routes for managing cards:
  get     "user/:username/decks/:id/cards",     to: "cards#show",     as: "cards"
  post    "user/:username/decks/:id/cards",     to: "cards#create"
  put     "user/:username/decks/:id/cards/:id", to: "cards#update"
  delete  "user/:username/decks/:id/cards/:id", to: "cards#destroy"

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
