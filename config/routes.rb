Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root  "employees#index"
  resources :employees do
  	resources :pay_periods
  end

  get 'create' => "employees#new"

  resource :session

  get "signin" => "sessions#new"

  resource :work_hours

  resources :admins do
    member do
      get :work_groups
      get :time_sheets
    end
  end

  get 'admins/:admin_id/work_groups/:id', to: 'admins#select_employee', as: "admin_work_groups"
  get 'admins/:admin_id/employee/:id', to: 'admins#select_pay_period', as: "select_employee_pay_period"
  resources :work_groups

  #patch 'admins/:admin_id/pay_period/:id', to: 'admins#admin_get_pay_period', as: "admin_get_pay_period"
  get 'admins/:admin_id/pay_period/:id', to: 'admins#admin_view_pay_period', as: "admin_view_pay_period"
end
