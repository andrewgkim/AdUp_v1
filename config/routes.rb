Rails.application.routes.draw do

  # Routes for the Tagging resource:
  # CREATE
  get('/taggings/new', { :controller => 'taggings', :action => 'new' })
  get('/create_tagging', { :controller => 'taggings', :action => 'create' })

  # READ
  get('/taggings', { :controller => 'taggings', :action => 'index' })
  get('/taggings/:id', { :controller => 'taggings', :action => 'show' })

  # UPDATE
  get('/taggings/:id/edit', { :controller => 'taggings', :action => 'edit' })
  get('/update_tagging/:id', { :controller => 'taggings', :action => 'update' })

  # DELETE
  get('/delete_tagging/:id', { :controller => 'taggings', :action => 'destroy' })
  #------------------------------

  # Routes for the Picture resource:
  # CREATE
  get('/pictures/new', { :controller => 'pictures', :action => 'new' })
  get('/create_picture', { :controller => 'pictures', :action => 'create' })

  # READ
  get('/pictures', { :controller => 'pictures', :action => 'index' })
  get('/pictures/:id', { :controller => 'pictures', :action => 'show' })

  # UPDATE
  get('/pictures/:id/edit', { :controller => 'pictures', :action => 'edit' })
  get('/update_picture/:id', { :controller => 'pictures', :action => 'update' })

  # DELETE
  get('/delete_picture/:id', { :controller => 'pictures', :action => 'destroy' })
  #------------------------------

  get('/my_categories', { :controller => 'categories', :action => 'my_categories' })
  get('/my_ad_views', { :controller => 'ad_views', :action => 'my_ad_views' })


  devise_for :users
root 'ads#index'



  # Routes for the Ad_view resource:
  # CREATE
  get('/ad_views/new', { :controller => 'ad_views', :action => 'new' })
  get('/create_ad_view', { :controller => 'ad_views', :action => 'create' })

  # READ
  get('/ad_views', { :controller => 'ad_views', :action => 'index' })
  get('/ad_views/:id', { :controller => 'ad_views', :action => 'show' })

  # UPDATE
  get('/ad_views/:id/edit', { :controller => 'ad_views', :action => 'edit' })
  get('/update_ad_view/:id', { :controller => 'ad_views', :action => 'update' })

  # DELETE
  get('/delete_ad_view/:id', { :controller => 'ad_views', :action => 'destroy' })
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get('/categories/new', { :controller => 'categories', :action => 'new' })
  get('/create_category', { :controller => 'categories', :action => 'create' })

  # READ
  get('/categories', { :controller => 'categories', :action => 'index' })
  get('/categories/:id', { :controller => 'categories', :action => 'show' })

  # UPDATE
  get('/categories/:id/edit', { :controller => 'categories', :action => 'edit' })
  get('/update_category/:id', { :controller => 'categories', :action => 'update' })

  # DELETE
  get('/delete_category/:id', { :controller => 'categories', :action => 'destroy' })
  #------------------------------

  # Routes for the Ad resource:
  # CREATE
  get('/ads/new', { :controller => 'ads', :action => 'new' })
  get('/create_ad', { :controller => 'ads', :action => 'create' })

  # READ
  get('/ads', { :controller => 'ads', :action => 'index' })
  get('/ads/:id', { :controller => 'ads', :action => 'show' })

  # UPDATE
  get('/ads/:id/edit', { :controller => 'ads', :action => 'edit' })
  get('/update_ad/:id', { :controller => 'ads', :action => 'update' })

  # DELETE
  get('/delete_ad/:id', { :controller => 'ads', :action => 'destroy' })
  #------------------------------

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
