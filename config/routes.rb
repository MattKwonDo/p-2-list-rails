# frozen_string_literal: true
# from https://devcenter.heroku.com/articles/getting-started-with-rails5
# root 'welcome#index'

Rails.application.routes.draw do
  resources :new_items, except: [:new, :edit] # show, index, create, update, destroy
  resources :items, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
