Rails.application.routes.draw do
  resources :users
  resources :snippets
  resources :storytellers do
     collection do
        post '/login', to: 'storytellers#login'
     end
  end

  resources :stories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
