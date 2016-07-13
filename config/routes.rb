Rails.application.routes.draw do
  resources :pay_periods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root  "employees#index"
  resources :employees do 
  	resources :pay_period
  end

  get 'create' => "employees#new"

  resource :session

  get "signin" => "sessions#new"

  resource :work_hours
end
