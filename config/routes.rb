# frozen_string_literal: true

Rails.application.routes.draw do
  resources :games, only: %i[index show create destroy] do
    post 'add_rebuy', on: :member
    put 'make_second_place', on: :member
    put 'make_second_place', on: :member
  end
  resources :players, only: %i[index show create update destroy]
end
