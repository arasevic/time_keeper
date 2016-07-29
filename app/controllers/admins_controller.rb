class AdminsController < ApplicationController
	def show
		@admin = Admin.find(params[:id])
		#@work_group = @admin.work_groups.first
    @wgs = @admin.work_groups
	end


  def work_groups
    @admin = Admin.find(params[:id])
  end

  def time_sheets
    @admin = Admin.find(params[:id])
    @groups = @admin.work_groups
  end

  def select_employee
    @admin = Admin.find(params[:admin_id])
    @work_group = WorkGroup.find(params[:id])
    @employees = @work_group.employees
  end

  def select_pay_period
    @employee = Employee.find(params[:id])
    @work_group = WorkGroup.find(@employee.work_group_id)
    @admin = Admin.find(@work_group.admin_id)
  end

#  def admin_get_pay_period
#    @admin = Admin.find(params[:admin_id])
#    @pay_period = PayPeriod.find(params[:id])
#  end

  def admin_view_pay_period
    @admin = Admin.find(params[:admin_id])
    @pay_period = PayPeriod.find(params[:employee][:pay_periods])
    @employee = Employee.find(@pay_period.employee_id)
    @days = @pay_period.work_days
  end
end
