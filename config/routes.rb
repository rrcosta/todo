Rails.application.routes.draw do
  root 'todo_lists#index'
  
  resources :todo_lists
  resources :metrics, except: %i[destroy update create]

  get 'pending', to: 'todo_lists#pending'
  get 'completed', to: 'todo_lists#completed'

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :todo_lists

      get 'todo_pending'  , to: 'todo_lists#todo_pending'
      get 'todo_completed', to: 'todo_lists#todo_completed'
      
      resources :metrics, only: %i[index show]
      get 'metric_of_controller_name'     , to: 'metrics#metric_of_controller_name'
      get 'metric_of_action_name'         , to: 'metrics#metric_of_action_name'
      get 'metric_average_of_time_process', to: 'metrics#average_of_time_process'
    end
  end
end
