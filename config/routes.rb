# the routes here are the routes we’ll be making fetch requests to from our front end

Rails.application.routes.draw do

  # routes are scoped with api, and objectives are nested under goals so objectives can only be reached through goals
  scope :api do
    resources :goals do
      resources :objectives
    end
  end

  # custom route for the toggle function
  get '/api/goals/:id/toggle', to: 'goals#toggle'
  
  # route to delete an objective
  resources :objectives, only: [:destroy]

  # custom route for the toggle function
  patch '/api/objectives/:id', to: 'objectives#toggle'

end

# SCOPE
# using scope without any options (only a scope name), it will change only the resources path
# my routes are now scoped (api - so it's clear we're fetching to an api) and nested (objectives within goals): 
# example: /api/goals/:goal_id/objectives(.:format) -- goal_objectives_path 

# ALL ROUTES
# all routes: http://localhost:3000/rails/info/routes