Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#show"
  resources :textbooks
  get "about" => "about#about"
  get "buy" => "buy#buy"
  get "sell" => "sell#sell"
end
