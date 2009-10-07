ActionController::Routing::Routes.draw do |map|
  map.resources :ingredient_types

  map.resources :ingredients

  map.resources :recipe_items

  map.resources :recipe_types

  map.resources :recipes

  map.resources :profiles

  
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
