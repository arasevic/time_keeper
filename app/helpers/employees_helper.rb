module EmployeesHelper

	def generate_pay_periods(employee)
		result = []
		employee.pay_periods.each do |pay_period|
			text = ""
			text += pay_period.start_date.to_s + " - " + pay_period.end_date.to_s
			val = pay_period.id
			temp = [text,val]
			result << temp
		end	
		result
	end	
end
