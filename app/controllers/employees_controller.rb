class EmployeesController < ApplicationController
	def index
		@employees= Employee.all
	end	

	def show
		@employee = Employee.find(params[:id])
		#create helper to find right pay_period to pass to redirect method
		#@pay_period = @employee.pay_periods.find(1)
		
		
	end

	def new
		@employee = Employee.new
		
	end

	def edit 
		#@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		@pay_period = @employee.pay_periods.find(params[:employee][:pay_periods])
		if @employee.update(employee_params)
      	redirect_to edit_employee_pay_period_path(@employee, @pay_period), notice: "Account successfully updated!"
   		else
      	render :edit
    end
	end

	def create
		@employee = Employee.new(employee_params)
		  if @employee.save
		    session[:employee_id] = @employee.id
		    redirect_to @employee, notice: "New Employee #{employee.last_name}, #{employee.first_name} has been created"
		  else
		    render :new
			end 
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