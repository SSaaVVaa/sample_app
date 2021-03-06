SampleApp::Application.routes.draw do
  get "sprint_teams/new"
  get "sprint_teams/create"
  get "sprint_teams/edit"
  get "sprint_teams/update"
  get "sprint_teams/delete"
  get "sprints/new"
  get "sprints/destroy"
  get "sprints/create"
  get "sprint_backlog_items/new"
  get "sprint_backlog_items/edit"
  get "sprint_backlog_items/create"
  get "sprint_backlog_items/update"
  get "sprint_backlog_items/destroy"
  get "backlog_items/new"
  get "backlog_items/destroy"
  get "backlog_items/create"
  get "projects/show"
  get "projects/new"

  get "projects/update"
  get "projects/delete"
  resources :users
  root "static_pages#home"
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'

  #можно и так сделать, чтобы определить url только для трех методов контроллера
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'


  resources :projects
  resources :teams
  resources :backlog_items
  resources :sprint_backlog_items
  resources :sprints
  resources :sprint_teams

  get 'sprint_backlog_items/new/:id' => 'sprint_backlog_items#new'
 # match '/'       , to: 'static_pages#home'   , via: 'get'
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
