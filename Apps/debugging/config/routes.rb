Debugging::Application.routes.draw do
  get "peanuts/index"
  root :to => 'peanuts#index'
end
