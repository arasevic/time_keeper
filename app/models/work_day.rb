class WorkDay < ApplicationRecord

	belongs_to :pay_period



  DAY = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  
  validates :day, inclusion: { 
    in: DAY }

end