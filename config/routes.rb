Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Routes for the Item_follower resource:
  # CREATE
  get "/item_followers/new", :controller => "item_followers", :action => "new"
  post "/create_item_follower", :controller => "item_followers", :action => "create"

  # READ
  get "/item_followers", :controller => "item_followers", :action => "index"
  get "/item_followers/:id", :controller => "item_followers", :action => "show"

  # UPDATE
  get "/item_followers/:id/edit", :controller => "item_followers", :action => "edit"
  post "/update_item_follower/:id", :controller => "item_followers", :action => "update"

  # DELETE
  get "/delete_item_follower/:id", :controller => "item_followers", :action => "destroy"
  #------------------------------

  # Routes for the Ranking resource:
  # CREATE
  get "/rankings/new", :controller => "rankings", :action => "new"
  post "/create_ranking", :controller => "rankings", :action => "create"

  # READ
  get "/rankings", :controller => "rankings", :action => "index"
  get "/rankings/:id", :controller => "rankings", :action => "show"

  # UPDATE
  get "/rankings/:id/edit", :controller => "rankings", :action => "edit"
  post "/update_ranking/:id", :controller => "rankings", :action => "update"

  # DELETE
  get "/delete_ranking/:id", :controller => "rankings", :action => "destroy"
  #------------------------------

  # Routes for the Step resource:
  # CREATE
  get "/steps/new", :controller => "steps", :action => "new"
  post "/create_step", :controller => "steps", :action => "create"

  # READ
  get "/steps", :controller => "steps", :action => "index"
  get "/steps/:id", :controller => "steps", :action => "show"

  # UPDATE
  get "/steps/:id/edit", :controller => "steps", :action => "edit"
  post "/update_step/:id", :controller => "steps", :action => "update"

  # DELETE
  get "/delete_step/:id", :controller => "steps", :action => "destroy"
  #------------------------------

  # Routes for the Follower resource:
  # CREATE
  get "/followers/new", :controller => "followers", :action => "new"
  post "/create_follower", :controller => "followers", :action => "create"

  # READ
  get "/followers", :controller => "followers", :action => "index"
  get "/followers/:id", :controller => "followers", :action => "show"

  # UPDATE
  get "/followers/:id/edit", :controller => "followers", :action => "edit"
  post "/update_follower/:id", :controller => "followers", :action => "update"

  # DELETE
  get "/delete_follower/:id", :controller => "followers", :action => "destroy"
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get "/items/new", :controller => "items", :action => "new"
  post "/create_item", :controller => "items", :action => "create"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  post "/update_item/:id", :controller => "items", :action => "update"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"
  #------------------------------

devise_for :users, :controllers => { registrations: 'registrations' }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root to: "rankings#index"

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
