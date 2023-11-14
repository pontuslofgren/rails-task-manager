Rails.application.routes.draw do
  # Add new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Edit a task
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'

  # List all tasks
  get 'tasks', to: 'tasks#index'

  # Display task
  get 'tasks/:id', to: 'tasks#show', as: 'task'


end
