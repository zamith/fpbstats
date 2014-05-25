Fpbstats::Application.routes.draw do
  root to: 'pages#home'

  resources :players
end
