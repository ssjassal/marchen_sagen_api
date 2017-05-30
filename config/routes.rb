Rails.application.routes.draw do
  resources :snippets
  resources :storytellers
  resources :stories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
