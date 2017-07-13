Rails.application.routes.draw do
  namespace :admin do
    resources :textbooks
    resources :users

    root to: "textbooks#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#show"
  resources :textbooks
  get "about" => "about#about"
  get "sell" => "sell#sell"

end
