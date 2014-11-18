Rails.application.routes.draw do
  # Routes for the Teacher resource:
  # CREATE
  get '/new_teacher' => 'teachers#new'
  get '/create_teacher' => 'teachers#create'

  # READ
  get '/teachers' => 'teachers#index'
  get '/teachers/:id' => 'teachers#show'

  # UPDATE
  get '/teachers/:id/edit' => 'teachers#edit'
  get '/teachers/:id/update' => 'teachers#update'

  # DELETE
  get '/teachers/:id/destroy' => 'teachers#destroy'
  #------------------------------

  # Routes for the Report resource:
  # CREATE
  get '/new_report' => 'reports#new'
  get '/create_report' => 'reports#create'

  # READ
  get '/reports' => 'reports#index'
  get '/reports/:id' => 'reports#show'

  # UPDATE
  get '/reports/:id/edit' => 'reports#edit'
  get '/reports/:id/update' => 'reports#update'

  # DELETE
  get '/reports/:id/destroy' => 'reports#destroy'
  #------------------------------

  # Routes for the Student resource:
  # CREATE
  get '/new_student' => 'students#new'
  get '/create_student' => 'students#create'

  # READ
  get '/students' => 'students#index'
  get '/students/:id' => 'students#show'

  # UPDATE
  get '/students/:id/edit' => 'students#edit'
  get '/students/:id/update' => 'students#update'

  # DELETE
  get '/students/:id/destroy' => 'students#destroy'
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
