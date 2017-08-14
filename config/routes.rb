Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do

      resources :donations
      resources :teams
      resources :users

      get '/graph', to: 'users#graph'
    end
  end

end
