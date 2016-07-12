class EmployeesController < ApplicationController
	def index
		@employees= Employee.all
	end	

	def show
		@employee = Employee.find(params[:id])
	end

	def new
		@employee = Employee.new
	end

	def edit 
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update(employee_params)
      	redirect_to @employee, notice: "Account successfully updated!"
   		else
      	render :edit
    	end
	end

end

private
  
  def employee_params
    params.require(:employee).permit(:first_name, :email, :password, :password_confirmation)
  end

  def require_correct_employee
    @employee = Employee.find(params[:id])
    redirect_to root_url unless current_employee?(@employee)    
  end
