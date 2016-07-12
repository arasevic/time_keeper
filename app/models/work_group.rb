class WorkGroup < ApplicationRecord
	belongs_to :admin
	has_many :employees
end
