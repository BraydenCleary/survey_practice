Survey_practice::Application.routes.draw do
  
  root :to => "pages#home"

  resources :users, :only => [:create , :show]
  resources :surveys, :only => [:new, :create, :index, :show] do
    resources :questions, :only => [:new, :create, :index]
  end

  resources :sessions, :only => [:create, :destroy]

  match "login" =>  "sessions#create"
  match "logout" => "sessions#destroy"

end
