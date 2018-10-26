Rails.application.routes.draw do
  root  to: "welcome#home"
  get 'home', to: "welcome#home"
  get 'about', to: "welcome#about"

  
  resources :admissions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
