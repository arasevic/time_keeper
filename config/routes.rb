Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root  "employees#index"
  resources :employees do 
  	resources :pay_periods
  end

  get 'create' => "employees#new"

  resource :session

  get 'create' => "admins#new"

  resource :session_admin

  get "signin" => "sessions#new"

  resource :work_hours
end
