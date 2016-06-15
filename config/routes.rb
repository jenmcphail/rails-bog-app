Rails.application.routes.draw do
  root "creatures#index"

  #GETs index page
  get "/creatures", to: "creatures#index", as: "creatures"

  #GETs form for new creature
  get "/creatures/new", to: "creatures#new"

  #POSTs a new creature using the form to the creatures index page
  post "/creatures", to: "creatures#create"

  #SHOWs individual creature
  get "/creatures/:id", to: "creatures#show", as: "creature"

  #GETs edit form for creature
  get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"

  #UPDATEs creature
  patch "/creatures/:id", to: "creatures#update"

  #DESTROYs creature
  delete "/creatures/:id", to: "creatures#destroy"



end
