Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts
  get '/index' => 'how2politik#index'

  post '/index' => 'how2politik#index'

  get '/about' => 'how2politik#about'

  get 'practice/index'

  get 'practice/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


