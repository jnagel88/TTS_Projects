Rails.application.routes.draw do
  get 'all' => 'country#all_states'

  get 'top_pop' => 'country#top_pop'

  resources :states
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
