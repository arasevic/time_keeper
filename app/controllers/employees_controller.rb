class EmployeesController < ApplicationController
	  before_action :require_signin, except: [:new, :create]
	  before_action :require_correct_employee, only: [:edit, :update, :destroy]
	def index
		@employees= Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
		#create helper to find right pay period to pass to redirect method
		#flow log in drop box

		#redirect_to employee_pay_period_path(@employee, @pay_period)
		if @employee.admin?
			@admin = Admin.find_by(email:@employee.email)
			redirect_to admin_path(@admin)
		end
	end

	def new
		@employee = Employee.new

	end

	def edit
	end

	def update

		@employee = Employee.find(params[:id])
		@pay_period = @employee.pay_periods.find(params[:employee][:pay_periods])

			redirect_to edit_employee_pay_period_path(@employee, @pay_period), notice: "Account successfully updated!"



	end

	def create
		@employee = Employee.find(params[:employee_id])
		@pay_period = @employee.pay_periods.find(params[:pay_period_id])
		@work_day = @pay_period.work_days.find(params[:id])

  	end



private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :hired_date, :email, :password, :password_confirmation, :employee)
  end
	def require_correct_employee
   		@employee = Employee.find(params[:id])
   		redirect_to root_url unless current_employee?(@employee)
	end

end
