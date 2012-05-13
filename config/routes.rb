HacklatonApp::Application.routes.draw do
  resources :purchases

  resources :policies

  resources :drivers

  resources :autos

  resources :companies

  get "/policies/:driver_id" => "policies#index"

end