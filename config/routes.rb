Rails.application.routes.draw do

  root 'advents#index'

  resources :advents, only: [:create, :index, :new, :show, :update]

  devise_for :users

end
