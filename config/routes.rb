Rails.application.routes.draw do

  resources :todo

  skip_before_action :verify_authenticity_token, :only => [:update, :put]

  get 'todo/index'

  put 'todo/update'

  post 'todo/create'

  root to: "todo#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
