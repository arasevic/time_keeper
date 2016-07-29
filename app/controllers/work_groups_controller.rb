class WorkGroupsController < ApplicationController
  def update
		@employee = Employee.find(params[:work_group][:employees])
    @work_group = WorkGroup.find(params[:id])
    @admin = Admin.find(@work_group.admin_id)
    redirect_to select_employee_pay_period_path(@admin,@employee)
  end
end
