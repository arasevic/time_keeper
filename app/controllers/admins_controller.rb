class AdminsController < ApplicationController

  def show
    @admin = Admin.find(params[:id])
		@work_group = @admin.work_groups.first
  end
end
