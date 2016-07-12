module ApplicationHelper

	def current_employee
 		@current_employee  ||=  Employee.find(session[:employee_id]) if session[:employee_id]
	end
end
