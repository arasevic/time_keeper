class Employee < ApplicationRecord
	belongs_to :work_group
	
	def has_work_group?
		true
	end	
end
