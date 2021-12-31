Rails.application.routes.draw do
  resources :clients

  root 'visitors#welcome'
end
