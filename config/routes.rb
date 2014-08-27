Rails.application.routes.draw do

# root 'shelters#index'

root :to =>'shelter#index'

  # get 'signup' => 'users#new', as: :sign_up
  # post  'signup' => 'users#create'
  
  # get 'signin' => 'sessions#new', as: :sign_in
  # post 'signin' => 'sessions#create'
  # delete 'signout' => 'sessions#delete', as: :sign_out
  
  # resources :sessions, only: [:create]


   get 'shelters/new' => 'shelters#new'

  # post 'shelters' => 'shelters#create'

  # get 'shelters/:id' => 'shelters#show', as: :shelter

  # get 'shelters/:id/edit' => 'users#edit'

  # get 'shelters/edit'

  # get 'shelters/update'

  # get 'shelters/destroy'

  # get 'users/' => 'users#index'

  # delete 'users/:id' => 'users#destroy'

  # get 'vevents' => 'signups#index', as: :vevents

  # get 'vevents/new' => 'signups#new', as: :new_vevent

  # post 'vevents' => 'signups#create'

  # get 'vevents' => 'signups#show'

  # resources :users
  resources :shelters
 








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
