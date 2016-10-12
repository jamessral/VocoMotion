Rails.application.routes.draw do
  resources :projects
  resources :teams
  resources :people

  # Root to projects#index so that the user sees the list of
  # what everyone is working on for a given day
  root 'projects#index'
end
