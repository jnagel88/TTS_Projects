Rails.application.routes.draw do
  resources :users
  get '/wumbo' => 'users#thewumbomethod'
  get 'mapmap' => 'users#mapmapthemethod'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
