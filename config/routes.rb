# frozen_string_literal: true

Rails.application.routes.draw do
  root 'visitors#welcome'
  
  devise_for :users

  scope '/admin' do
    resources :clients
    
    resources :projects

    resources :manage_users
  end
  scope '/manager' do
    resources :clients
  end
  scope '/member' do
    resources :manage_users
  end
end
