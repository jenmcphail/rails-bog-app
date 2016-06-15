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



end
