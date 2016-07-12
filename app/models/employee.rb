class Employee < ApplicationRecord
	has_secure_password
	
	#belongs_to :work_group
	
	def self.authenticate(email, password)
		employee = Employee.find_by(email: email)
		employee && employee.authenticate(password)
	end
	
end
