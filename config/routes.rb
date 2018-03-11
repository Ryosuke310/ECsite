Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :confirmations => "users/confirmations",
    :sessions => "users/sessions",
    :registrations => "users/registrations"
  }
  
  # Partner
  get 'partners/index' => "partners#index"
  
  # Cart
  get 'carts/show' => "carts#show"
  post 'carts/:item_id/add_item' => "carts#add_item"
  post 'carts/:item_id/remove_item' => "carts#remove_item"

  # Order
  get 'orders/:item_id/new' => "orders#new_from_item"
  post 'orders/:item_id/create' => "orders#create"
  post 'orders/create' => "orders#create"
  get 'orders/:user_id/index' => "orders#index"
  get 'orders/:user_id/:id/show' => "orders#show"
  get 'orders/new' => "orders#new_from_cart"

  # User
  get 'users/sign_up_2' => "users#sign_up_2"
  get 'users/sign_up_3' => "users#sign_up_3"
  get 'users/:id' => "users#show"

  # Item
  get 'items/index' => "items#index"
  get 'items/:id' => "items#show"

  # Home
  get '/' => "home#top"
  get 'blog' => "home#blog"
  get 'news' => "home#news"
  get 'contact' => "home#contact"
  get 'rule' => "home#rule"
  get 'privacy' => "home#privacy"
  get 'question' => "home#question"
  get 'transaction_row' => "home#transaction_row"
  get 'mypage' => "home#mypage"
  
  root to: "home#top"

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
