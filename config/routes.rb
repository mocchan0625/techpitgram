Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users
  resources :posts, only: %i(index show create) do
    resources :photos, only: %i(create)
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
