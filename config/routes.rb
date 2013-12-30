C3po::Application.routes.draw do
  root to: 'contracts#index'
  resources :contracts
end
