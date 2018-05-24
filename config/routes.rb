Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  # if not add except: [:show] , when i test globbing will see no show controller method
  resources :posts, except: [:show] 
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:else', to: 'pages#something'
  get 'query/:else/:anther_else', to: 'pages#something'


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
