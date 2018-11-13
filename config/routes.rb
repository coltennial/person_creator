Rails.application.routes.draw do
  root 'static_persons#home'

  get '/about', to: 'static_persons#about'
  
  resources :persons
end
