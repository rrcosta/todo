Rails.application.routes.draw do
  root 'todo_lists#index'
  
  resources :todo_lists
  resources :metrics

  get 'pending', to: 'todo_lists#pending'
  get 'completed', to: 'todo_lists#completed'

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :todo_lists

      get 'todo_pending'  , to: 'todo_lists#todo_pending'
      get 'todo_completed', to: 'todo_lists#todo_completed'
      
    end
  end
end
