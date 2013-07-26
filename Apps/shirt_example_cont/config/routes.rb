ShirtExampleCont::Application.routes.draw do
  root to: "shirts#index"
  # get "shirts" => "shirts#index"
  
  resources :shirts
end
