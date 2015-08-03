Rails.application.routes.draw do
  root to: 'criteria#new'



  resources :visitors
  resources :visitors, only: [:new, :create]
  resources :criteria
  resources :replies
  resources :users

  get 'static_pages/about' 
  get 'static_pages/resources'
  get 'static_pages/terms_of_service'

  get 'static_pages/why_respond_part1'
  get 'static_pages/why_respond_part2'
  get 'static_pages/why_respond_part3'

  get 'static_pages/when_to_delete_part1'
  get 'static_pages/when_to_delete_part2'
  get 'static_pages/when_to_delete_part3'
  get 'static_pages/when_to_delete_part4'
  get 'static_pages/when_to_delete_part5'
  get 'static_pages/when_to_delete_part6'
  get 'static_pages/when_to_delete_part7'

  get 'static_pages/using_the_nps_part1'
  get 'static_pages/using_the_nps_part2'
  get 'static_pages/using_the_nps_part3'
  get 'static_pages/using_the_nps_part4'
  get 'static_pages/using_the_nps_part5'



  get "responses/new" => "responses#new"
  get "responses/:id" => "responses#show", as: "response"




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
