class WorkDay < ApplicationRecord
	#has_many :work_hours
	belongs_to :pay_period
end

private
  
  def work_day_params
    params.require(:work_day).permit(:over_time, :last_name, :hired_date, :email, :password, :password_confirmation, :work_day)
  end
