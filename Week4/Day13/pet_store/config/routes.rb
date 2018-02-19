Rails.application.routes.draw do
  resources :pets
  get '/' => 'welcome#index'

  get 'about' => 'welcome#about'

  get 'list' => 'welcome#pet_list'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

