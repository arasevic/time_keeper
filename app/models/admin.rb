class Admin < ApplicationRecord
	has_many :employees
	has_many :work_groups
end
