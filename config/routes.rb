# frozen_string_literal: true

Rails.application.routes.draw do
  root 'lessons#index'
  resources :lessons
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  devise_for :tutors, controllers: {
    sessions: 'tutors/sessions',
    passwords: 'tutors/passwords',
    registrations: 'tutors/registrations'
  }
end
