class Employee < ApplicationRecord
	has_secure_password
	
	belongs_to :work_group
	has_many :pay_periods

	accepts_nested_attributes_for :pay_periods
	
	def self.authenticate(email, password)
		employee = Employee.find_by(email: email)
		employee && employee.authenticate(password)
	end

 end 