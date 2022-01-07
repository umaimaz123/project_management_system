# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :clients
  root 'visitors#welcome'

  resources :projects

  resources :manage_users
end
