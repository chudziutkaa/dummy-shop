Rails.application.routes.draw do
  devise_for :admin_users, path: 'admin', skip: :registrations

  namespace :admin do
    resources :orders, only: [:index, :show]
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :order_products, only: :show
    resources :users, only: :show
    resources :admin_users, only: [:index, :new, :create, :destroy]

    root to: 'orders#index'
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'products#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  get 'products,:sort_params' => 'products#index', as: :sorted_products

  put 'orders/:id' => 'orders#complete', as: :complete_order
  get 'orders/:id' => 'orders#show', as: :completed_order

  get 'new_order' => 'orders#start_new_session', as: :new_session

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :products, only: [ :index, :show ]
  resources :order_products, only: [ :create, :update, :destroy ]

  # Example resource route with options:
  resources :carts, only: [ :index ]

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
