Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index', as: :home

  get '/login', to: 'users#login', as: :login
  delete '/logout', to: 'users#logout', as: :logout

  post '/login', to: 'sessions#create'

  get '/admin/dashboard', to: 'admin/dashboard#show', as: :admin_dashboard

  get '/manager/dashboard', to: 'manager/dashboard#show', as: :manager_dashboard

  get '/user/dashboard', to: 'users#show', as: :user_dashboard_path

end
