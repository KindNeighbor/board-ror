Rails.application.routes.draw do

  root :to => "home#index"
  post '/create' => 'home#create'
  get "/update/:postId" => 'home#update'
  post '/updateAction' => 'home#updateAction'
  get "/delete/:postId" => 'home#delete'

  get '/main' => 'calculator#main'
  get "/home" => "home#index"
  get "/test" => "home#test"
  post "/result" => "calculator#result"
  get "/plus/:num1/:num2" => "calculator#plus"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
