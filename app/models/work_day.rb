class WorkDay < ApplicationRecord
	#has_many :work_hours
	#belongs_to :pay_period

  WORK_HOUR_TYPES = [ 
    'Regular',
    'Vacation',
    'Non-Paid Leave',
    'Sick'
  ]
  
  validates :work_hour, 
            inclusion: { in: WORK_HOUR_TYPES }

end