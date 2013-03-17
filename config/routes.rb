Itech::Application.routes.draw do

  root to: "main#index"
  resources :subscribers

end
