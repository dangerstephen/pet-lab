Rails.application.routes.draw do

  root "site#index"

  resources :owners

end

# Prefix Verb   URI Pattern                Controller#Action
#   root GET    /                          site#index
# owners GET    /owners(.:format)          owners#index
#        POST   /owners(.:format)          owners#create
# new_owner GET    /owners/new(.:format)      owners#new
# edit_owner GET    /owners/:id/edit(.:format) owners#edit
#  owner GET    /owners/:id(.:format)      owners#show
#        PATCH  /owners/:id(.:format)      owners#update
#        PUT    /owners/:id(.:format)      owners#update
#        DELETE /owners/:id(.:format)      owners#destroy
# Danger_Stephen:pet-lab $
