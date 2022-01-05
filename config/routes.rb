# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :clients
  root 'clients#index'

  resources :projects
end
