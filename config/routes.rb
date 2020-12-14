# frozen_string_literal: true

Rails.application.routes.draw do
  get 'enemies/update'
  get 'enemies/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: %i[index create]
  resources :enemies, only: %i[update destroy]
end
