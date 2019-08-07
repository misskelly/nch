Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index', as: :home

  get '/login', to: 'users#login', as: :login
  delete '/logout', to: 'users#logout', as: :logout

  post '/login', to: 'sessions#create'
end
