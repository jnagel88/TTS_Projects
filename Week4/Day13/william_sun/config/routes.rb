Rails.application.routes.draw do
  get 'made_hundred_thou_then_i_freaked_it' => 'lit_or_nah#freaked_it'

  get '/' =>'welcome#index'

  get '/wumbo' => 'welcome#about'

  get '/niceeee' => 'welcome#contact'

  get '/nice/noice' => 'welcome#yee'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
