Rails.application.routes.draw do
  namespace :api do
    namespace :external do
      post '/auth/login', to: 'authentication#login'
    end
  end

  get '*path', to: 'home#index'

  root to: "home#index"
end
