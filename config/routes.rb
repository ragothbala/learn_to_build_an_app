Rails.application.routes.draw do
  # Routes for the Basis resource:
  # CREATE
  get "/bases/new", :controller => "bases", :action => "new"
  post "/create_basis", :controller => "bases", :action => "create"

  # READ
  get "/bases", :controller => "bases", :action => "index"
  get "/bases/:id", :controller => "bases", :action => "show"

  # UPDATE
  get "/bases/:id/edit", :controller => "bases", :action => "edit"
  post "/update_basis/:id", :controller => "bases", :action => "update"

  # DELETE
  get "/delete_basis/:id", :controller => "bases", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
