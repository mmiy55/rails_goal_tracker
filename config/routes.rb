Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :goals
  get "/goals/:id/complete",to: "goals#complete" ,as: "complete_goal"

end
