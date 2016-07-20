class PayPeriodsController < ApplicationController

	def index
        @pay_periods= @employee.pay_periods
    end    

    def show
        @employee = Employee.find(params[:employee_id])
        @pay_period = @employee.pay_periods.find(params[:id])
    end

    def new
        pay_period_attributes = params.require(:pay_period).permit(:start_date, :end_date, work_day_attributes: [:over_time] )
        @pay_period= @employee.pay_periods.new(pay_period_attributes)
    end

    def edit 
        @employee = Employee.find(params[:employee_id])
        @pay_period = @employee.pay_periods.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:employee_id])
        @pay_period = @employee.pay_periods.find(params[:id])
        if @pay_period.update(pay_period_params)
         #redirect_to @pay_period, notice: "Pay Period successfully updated!"
              redirect_to employee_pay_period_path(@employee, @pay_period), notice: "You've successfully updated your timesheet!"
          else
         render :edit
       end
   #pay_period_params = params.require(:pay_period).permit!
   #@pay_period.update(pay_period_params)
    end




    private
 
     def pay_period_params
 
       #params.require(:pay_period).permit(:first_name, :last_name, :hired_date, :email, :password, :password_confirmation, work_day_attributes: [:id, :over_time, :name])
         params.require(:pay_period).permit(:start_date, :end_date, work_days_attributes: [:over_time, :day, :id, :regular, :date, :sick_leave, :vacation, :maternity_leave, :non_paid_leave])

     end
end