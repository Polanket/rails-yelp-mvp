# frozen_string_literal: true

Rails.application.routes.draw do
  resources :restaurants, except: %I[edit update destroy] do
    resources :reviews, only: %I[new create]
  end
end
