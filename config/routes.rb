C3po::Application.routes.draw do
  devise_for :users
  root to: 'contracts#index'
  resources :contracts
end
