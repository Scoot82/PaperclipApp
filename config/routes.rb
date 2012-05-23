PaperclipApp::Application.routes.draw do

  get "/users", :controller => "users", :action => "index", :as => :users
  get "/users/new", :controller => "users", :action => "new", :as => :new_user
  get "/users/:id", :controller => "users", :action => "show", :as => :user
  post "/users/", :controller => "users", :action => "create"
  
end
