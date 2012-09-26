RosterApp::Application.routes.draw do
  resources :shifts
  resources :employees
  resources :stores

  root to: 'roster#index'
end
