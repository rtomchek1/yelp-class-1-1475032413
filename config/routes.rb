Rails.application.routes.draw do
  # Routes for the Restaurant_tag resource:
  # CREATE
  get "/restaurant_tags/new", :controller => "restaurant_tags", :action => "new"
  post "/create_restaurant_tag", :controller => "restaurant_tags", :action => "create"

  # READ
  get "/restaurant_tags", :controller => "restaurant_tags", :action => "index"
  get "/restaurant_tags/:id", :controller => "restaurant_tags", :action => "show"

  # UPDATE
  get "/restaurant_tags/:id/edit", :controller => "restaurant_tags", :action => "edit"
  post "/update_restaurant_tag/:id", :controller => "restaurant_tags", :action => "update"

  # DELETE
  get "/delete_restaurant_tag/:id", :controller => "restaurant_tags", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
