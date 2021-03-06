ActionController::Routing::Routes.draw do |map|

  map.connect '/bills/generate_bill/:banco', :controller => 'bills', :action => 'generate_bill'

  map.resources :friends

  map.resources :markets
  
  map.resources :cities

  map.resources :bookmark_items

  map.resources :bookmarks

  map.resources :comments

  map.resources :ingredient_types

  map.resources :ingredients

  map.resources :recipe_items

  map.resources :recipe_types

  map.resources :recipes

  map.resources :profiles
  
  map.resources :search

  
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'

  map.open_id_complete 'session', :controller => "sessions", :action => "create", :requirements => { :method => :get }

  map.resources :users

  map.resources :profiles

  map.resource :session

  map.root :controller => "home"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
