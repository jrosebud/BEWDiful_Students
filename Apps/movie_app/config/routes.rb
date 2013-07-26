MovieApp::Application.routes.draw do
  root to: "movie#index"
  get "/movie", to: "movie#index", as: "movie"
  post "/search", to: "movie#search", as: "movie_search"
  
  resources :movie
end
