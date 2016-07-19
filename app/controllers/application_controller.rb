class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	def current_employee
    	@current_employee ||= Employee.find(session[:employee_id]) if session[:employee_id]
    end
  
  	helper_method :current_employee

  	def current_employee?(employee)
    	current_employee == employee
  	end

private

  def require_signin
    unless current_employee
      redirect_to new_session_url, alert: "Please sign in first!"
    end
  end


end
