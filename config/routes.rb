Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "restaurants#index"
  # Routes for the Cover_photo resource:
  # CREATE
  get "/cover_photos/new", :controller => "cover_photos", :action => "new"
  post "/create_cover_photo", :controller => "cover_photos", :action => "create"

  # READ
  get "/cover_photos", :controller => "cover_photos", :action => "index"
  get "/cover_photos/:id", :controller => "cover_photos", :action => "show"

  # UPDATE
  get "/cover_photos/:id/edit", :controller => "cover_photos", :action => "edit"
  post "/update_cover_photo/:id", :controller => "cover_photos", :action => "update"

  # DELETE
  get "/delete_cover_photo/:id", :controller => "cover_photos", :action => "destroy"
  #------------------------------

  # Routes for the User_photo resource:
  # CREATE
  get "/user_photos/new", :controller => "user_photos", :action => "new"
  post "/create_user_photo", :controller => "user_photos", :action => "create"

  # READ
  get "/user_photos", :controller => "user_photos", :action => "index"
  get "/user_photos/:id", :controller => "user_photos", :action => "show"

  # UPDATE
  get "/user_photos/:id/edit", :controller => "user_photos", :action => "edit"
  post "/update_user_photo/:id", :controller => "user_photos", :action => "update"

  # DELETE
  get "/delete_user_photo/:id", :controller => "user_photos", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

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
