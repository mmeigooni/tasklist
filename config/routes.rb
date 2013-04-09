Tasklist::Application.routes.draw do
  get "/login" => "sessions#new", as: 'login'

  post "sessions/create", as: 'session'

  get '/logout' => "sessions#destroy", as: 'logout'

  root to: "sessions#new"

  resources :tasks
end
