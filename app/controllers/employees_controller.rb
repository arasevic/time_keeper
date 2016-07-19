class EmployeesController < ApplicationController
	  before_action :require_signin, except: [:new, :create]
	  before_action :require_correct_employee, only: [:edit, :update, :destroy, :index]
	def index
		@employees= Employee.all
	end	

	def show
		@employee = Employee.find(params[:id])
		#create helper to find right pay period to pass to redirect method
		#flow log in drop box
		@pay_period = @employee.pay_periods.find(params[:id])
		#redirect_to employee_pay_period_path(@employee, @pay_period)
		
	end

	def new
		@employee = Employee.new
		
	end

	def edit 
	end

	def update

		@employee = Employee.find(params[:id])
		@pay_period = employee.work_day
      	#redirect_to @employee, notice: "Account successfully updated!"
   		#else
      	#render :edit
    	#end
	end

	def create
		@employee = Employee.find(params[:employee_id])
		@pay_period = @employee.pay_periods.find(params[:pay_period_id])
		@work_day = @pay_period.work_days.find(params[:id])

  	end



private
  
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :hired_date, :email, :password, :password_confirmation, :pay_period)
  end
  def current_employee
    @current_employee ||= Employee.find(session[:employee_id]) if session[:employee_id]
  end

  helper_method :current_employee

end
