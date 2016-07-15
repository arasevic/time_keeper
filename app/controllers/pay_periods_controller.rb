class PayPeriodsController < ApplicationController

	def index
		@pay_periods= @employee.pay_periods
	end	

	def show
		@employee = Employee.find(params[:employee_id])
		@pay_period = @employee.pay_periods.find(params[:id])
	end

	def new
		@pay_period= @employee.pay_periods.new
	end

	def edit
		@employee = Employee.find(params[:employee_id])
		@pay_period = @employee.pay_periods.find(params[:id])
		@work_day =  @pay_period.work_days.find(params[:id])

	end

	def update
		@pay_period = @pay_period.work_day(params[:id])
	#	if @pay_period.update(pay_period_params)
     # 	redirect_to @pay_period, notice: "Pay Period successfully updated!"
   	#	else
     # 	render :edit
    #	end
	end


end

private
  
  def pay_period_params
    params.require(:pay_period).permit(:start_date, :end_date, :completed_date, :completed, :employee_id, :work_day)
  end
