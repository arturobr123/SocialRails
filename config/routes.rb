Rails.application.routes.draw do
  get 'search/create'
  
  resources :posts do
    resources :comments
    resources :likes
  end



  devise_for :users
  resources :usuarios, as: :users,only: [:show,:update]
  get '/changeArea' , to: 'main#changeArea'
  
  
  
  authenticated :user do
  	root 'main#home'
  end

  unauthenticated :user do
  	root 'main#unregistered'
  end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
