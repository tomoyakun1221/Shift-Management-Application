Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  
  resources :attendances do
    member do
      get 'edit_salary_management_info'
      patch 'update_salary_management_info'
    end
  end
end
