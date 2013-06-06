TFC::Application.routes.draw do

  # Routes for the Text resource:
  # CREATE
  get '/texts/new', controller: 'texts', action: 'new', as: 'new_text'
  post '/texts', controller: 'texts', action: 'create'

  # READ
  get '/texts', controller: 'texts', action: 'index', as: 'texts'
  get '/texts/:id', controller: 'texts', action: 'show', as: 'text'

  # UPDATE
  get '/texts/:id/edit', controller: 'texts', action: 'edit', as: 'edit_text'
  put '/texts/:id', controller: 'texts', action: 'update'

  # DELETE
  delete '/texts/:id', controller: 'texts', action: 'destroy'
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get '/comments/new', controller: 'comments', action: 'new', as: 'new_comment'
  post '/comments', controller: 'comments', action: 'create'

  # READ
  get '/comments', controller: 'comments', action: 'index', as: 'comments'
  get '/comments/:id', controller: 'comments', action: 'show', as: 'comment'

  # UPDATE
  get '/comments/:id/edit', controller: 'comments', action: 'edit', as: 'edit_comment'
  put '/comments/:id', controller: 'comments', action: 'update'

  # DELETE
  delete '/comments/:id', controller: 'comments', action: 'destroy'
  #------------------------------

  # Routes for the Upvote resource:
  # CREATE
  get '/upvotes/new', controller: 'upvotes', action: 'new', as: 'new_upvote'
  post '/upvotes', controller: 'upvotes', action: 'create'

  # READ
  get '/upvotes', controller: 'upvotes', action: 'index', as: 'upvotes'
  get '/upvotes/:id', controller: 'upvotes', action: 'show', as: 'upvote'

  # UPDATE
  get '/upvotes/:id/edit', controller: 'upvotes', action: 'edit', as: 'edit_upvote'
  put '/upvotes/:id', controller: 'upvotes', action: 'update'

  # DELETE
  delete '/upvotes/:id', controller: 'upvotes', action: 'destroy'
  #------------------------------

  root to: 'sessions#new'

  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create', as: 'session'
  delete '/sessions' => 'sessions#destroy', as:'log_out'


  # Routes for the Foul resource:
  # CREATE
  get '/fouls/new', controller: 'fouls', action: 'new', as: 'new_foul'
  post '/fouls', controller: 'fouls', action: 'create'

  # READ
  get '/fouls', controller: 'fouls', action: 'index', as: 'fouls'
  get '/fouls/:id', controller: 'fouls', action: 'show', as: 'foul'

  # UPDATE
  get '/fouls/:id/edit', controller: 'fouls', action: 'edit', as: 'edit_foul'
  put '/fouls/:id', controller: 'fouls', action: 'update'

  # DELETE
  delete '/fouls/:id', controller: 'fouls', action: 'destroy'
  #------------------------------

  # Routes for the Call resource:
  # CREATE
  get '/calls/new', controller: 'calls', action: 'new', as: 'new_call'
  post '/calls', controller: 'calls', action: 'create'

  # READ
  get '/calls', controller: 'calls', action: 'index', as: 'calls'
  get 'calls/game/:id', controller: 'calls', action: 'game', as: 'game'
  get '/calls/:id', controller: 'calls', action: 'show', as: 'call'

  # UPDATE
  get '/calls/:id/edit', controller: 'calls', action: 'edit', as: 'edit_call'
  put '/calls/:id', controller: 'calls', action: 'update'

  # DELETE
  delete '/calls/:id', controller: 'calls', action: 'destroy'
  #------------------------------

  # Routes for the Ref resource:
  # CREATE
  get '/refs/new', controller: 'refs', action: 'new', as: 'new_ref'
  post '/refs', controller: 'refs', action: 'create'

  # READ
  get '/refs', controller: 'refs', action: 'index', as: 'refs'
  get '/refs/:id', controller: 'refs', action: 'show', as: 'ref'

  # UPDATE
  get '/refs/:id/edit', controller: 'refs', action: 'edit', as: 'edit_ref'
  put '/refs/:id', controller: 'refs', action: 'update'

  # DELETE
  delete '/refs/:id', controller: 'refs', action: 'destroy'
  #------------------------------

  # Routes for the Game resource:
  # CREATE
  get '/games/new', controller: 'games', action: 'new', as: 'new_game'
  post '/games', controller: 'games', action: 'create'

  # READ
  get '/games', controller: 'games', action: 'index', as: 'games'
  get '/games/:id', controller: 'games', action: 'show', as: 'game'

  # UPDATE
  get '/games/:id/edit', controller: 'games', action: 'edit', as: 'edit_game'
  put '/games/:id', controller: 'games', action: 'update'

  # DELETE
  delete '/games/:id', controller: 'games', action: 'destroy'
  #------------------------------

  # Routes for the Team resource:
  # CREATE
  get '/teams/new', controller: 'teams', action: 'new', as: 'new_team'
  post '/teams', controller: 'teams', action: 'create'

  # READ
  get '/teams', controller: 'teams', action: 'index', as: 'teams'
  get '/teams/:id', controller: 'teams', action: 'show', as: 'team'

  # UPDATE
  get '/teams/:id/edit', controller: 'teams', action: 'edit', as: 'edit_team'
  put '/teams/:id', controller: 'teams', action: 'update'

  # DELETE
  delete '/teams/:id', controller: 'teams', action: 'destroy'
  #------------------------------

  # Routes for the Player resource:
  # CREATE
  get '/players/new', controller: 'players', action: 'new', as: 'new_player'
  post '/players', controller: 'players', action: 'create'

  # READ
  get '/players', controller: 'players', action: 'index', as: 'players'
  get '/players/:id', controller: 'players', action: 'show', as: 'player'

  # UPDATE
  get '/players/:id/edit', controller: 'players', action: 'edit', as: 'edit_player'
  put '/players/:id', controller: 'players', action: 'update'

  # DELETE
  delete '/players/:id', controller: 'players', action: 'destroy'
  #------------------------------

  # Routes for the Vote resource:
  # CREATE
  get '/votes/new', controller: 'votes', action: 'new', as: 'new_vote'
  post '/votes', controller: 'votes', action: 'create'

  # READ
  get '/votes', controller: 'votes', action: 'index', as: 'votes'
  get '/votes/:id', controller: 'votes', action: 'show', as: 'vote'

  # UPDATE
  get '/votes/:id/edit', controller: 'votes', action: 'edit', as: 'edit_vote'
  put '/votes/:id', controller: 'votes', action: 'update'

  # DELETE
  delete '/votes/:id', controller: 'votes', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'create_user'


  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  #FAVORITE GAMES
  get  '/users/addteam', controller: 'favorites', action: 'new', as: 'add_favorite'
  post '/users', controller: 'favorites', action: 'create', as: 'create_favorite'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'

  # VIEW LOCKER ROOM
  get '/:id', :controller => 'users', :action => 'locker_room', :as => 'locker_room'
  #------------------------------



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
