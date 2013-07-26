GamingApp::Application.routes.draw do
  root "games#index"
  get '/games', to: 'games#index'
  get '/games/magic_8_ball', to: 'games#magic_8_ball', as: "magic_8_ball"
  get '/games/magic_8_ball/:question', to: 'games#magic_8_ball_play', as: 'magic_8_ball_play'
  get '/games/secret_number', to: 'games#secret_number', as: "secret_number"
  get '/games/secret_number/:guess', to: 'games#secret_number_play', as: "secret_number_play"
  get '/games/rps', to: 'games#rps', as: "rps"
  get '/games/rps/:throw', to: 'games#rps_play', as: "rps_play"
end
