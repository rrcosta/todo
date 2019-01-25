Rails.application.routes.draw do
  root 'todo_lists#index'
  resources :todo_lists

  namespace :api, constraints: { format: 'json' } do
    namespace :v1 do
      resources :todo_lists, only: [:index]
    end
  end

end
