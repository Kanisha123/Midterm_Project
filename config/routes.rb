# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search/index'
  get 'search/result'
  get 'search/treeResult'
  get 'about/index'
  get 'trees/index'
  get 'trees/show'
  get 'parks/index'
  get 'parks/show'

  resources :search, only: [:index] do
    collection do
      get 'result'
    end
  end

  resources :search, only: [:index] do
    collection do
      get 'treeResult'
    end
  end

  resources :parks do
    resources :trees
  end

  resources :trees do
    resources :parks
  end

  root to: 'about#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
