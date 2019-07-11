# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, except: %I[edit update destroy] do
    resources :reviews, only: :create
  end
end
