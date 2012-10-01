RosterApp::Application.routes.draw do
  resources :employees
  resources :stores do
    resources :shifts
    resources :default_shifts
  end

  root to: 'stores#index'
end
