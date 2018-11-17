Rails.application.routes.draw do
  root  to: "welcome#home"
  get 'home', to: "welcome#home"
  get 'about', to: "welcome#about"

  
  resources :admissions
  get 'signup', to: "users#new"
  resources :users, except: [:new]
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"

  
  #post 'users', to: "users#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
