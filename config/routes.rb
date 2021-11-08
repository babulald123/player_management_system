# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'teams#index'
  resources :team_players
  resources :players
  resources :teams
end
