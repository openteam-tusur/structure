Structure::Application.routes.draw do
  resources :faculties, :except => [:show] do
    resources :subdepartments, :except => [:show, :index]
  end
  root :to => 'faculties#index'
end
