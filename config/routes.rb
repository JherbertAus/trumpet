Rails.application.routes.draw do

  resources :trumps do
  member do
    put "like", to: "links#vote"

  end
end

  root 'pages#feed'
  get 'pages/feed'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
