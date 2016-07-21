class SessionsController < ApplicationController
	
  def new
  end

  def create
  		if employee = Employee.authenticate(params[:email], params[:password])
  			session[:employee_id] = employee.id
     		flash[:notice] = "Welcome back, #{employee.first_name}!"
     		redirect_to employee

      
  		else
  			flash.now[:alert] = "Invalid email/password combination!"
    		render :new
  		end
  end

  def destroy
    session[:employee_id] = nil
    redirect_to root_url, notice: "You're now signed out!"
  end

end
