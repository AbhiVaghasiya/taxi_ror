# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post 'home/', to: 'home#create'
  root 'home#index'
  get 'gettaxi', to: 'home#gettaxi', as: 'gettaxi'
  get 'services', to: 'home#services', as: 'services'
  get 'blog', to: 'home#blog', as: 'blog'
  get 'post', to: 'home#post', as: 'post'
  get 'contactus', to: 'home#contactus', as: 'contactus'
end
