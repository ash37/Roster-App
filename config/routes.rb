RosterApp::Application.routes.draw do
  resources :employees do
    resources :shifts
  end
  resources :stores do
    resources :default_shifts
  end

  root to: 'roster#index'
end
