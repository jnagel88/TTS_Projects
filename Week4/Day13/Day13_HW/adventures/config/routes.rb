Rails.application.routes.draw do
  get '/' => 'welcome#index'

  get 'ilovetocode' => 'welcome#index'

  resources :activities
  resources :states
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
