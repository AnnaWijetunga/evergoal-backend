Rails.application.routes.draw do

  scope :api do
    resources :goals do
      resources :objectives
    end
  end

end

# original routes and here below
# resources :objectives
# resources :goals

# let's talk scope
# when using scope without any options and only a scope name, it will just change the resources path.
# my routes are now scoped (api) and nested (objectives within goals): 
# /api/goals/:goal_id/objectives(.:format) -- goal_objectives_path 

# to see all routes: http://localhost:3000/rails/info/routes (so my brain can stop trying to remember)