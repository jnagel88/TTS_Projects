Rails.application.routes.draw do
  get '/' => 'country#all-states'

  get 'top_five_pop' => 'country#top_five_pop'

  get 'top_five_area' => 'country/top_five_area'

  # get '/' => 'welcome#index'

  get 'ilovetocode' => 'welcome#index'

  resources :activities
  resources :states
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


