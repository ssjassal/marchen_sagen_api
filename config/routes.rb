Rails.application.routes.draw do
  resources :snippets
  resources :stories
  resources :storytellers
  # do
  #    collection do
  #       post '/login', to: 'storytellers#login'
  #    end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
