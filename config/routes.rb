Rails.application.routes.draw do
<<<<<<< HEAD
  resources :books
  get 'home/index'

=======
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  get 'comments/create'

  get 'comments/destroy'

  root 'home#index'
  get 'sessions/new'

  resources :contacts, only: [:index, :create, :new]
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get '/intro' => 'home#intro'
  get '/activity' => 'home#activity'
  get 'home/index'
  get '/members' => 'home#members'
  get '/index' => 'home#index'
  get '/contact' => 'home#contact'
  post 'home/create' => 'home#create'
  get 'home/new'
  get '/members_lounge' => 'home#members_lounge'
  
>>>>>>> e02ea04f6731c624e3ab7c6055902494e904ccca
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
