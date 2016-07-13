class PayPeriodsController < ApplicationController

	def index
		@pay_periods= @employee.pay_periods
	end	

	def show
	end

	def new
		@pay_period= @employee.pay_periods.new
	end

	def edit 
	end

	def update
		@pay_period = @employee.pay_periods(params[:id])
		if @pay_period.update(pay_period_params)
      	redirect_to @pay_period, notice: "Pay Period successfully updated!"
   		else
      	render :edit
    	end
	end


end

private
  
  def pay_period_params
    params.require(:pay_period).permit(:first_name, :last_name, :hired_date, :email, :password, :password_confirmation)
  end


end
