require 'rails_helper'

describe "An employee" do
  it "has a full name" do
  	employee = Employee.create(employee_attributes)
  	expect(employee.first_name).not_to be_nil
  	expect(employee.last_name).not_to be_nil
  end

  it "belongs to a group" do
  	employee = Employee.create(employee_attributes)
  	expect(employee.has_work_group?).to eq true
  end

  it "has an email address" do
  	employee = Employee.create(employee_attributes)
  	expect(employee.email).not_to be_nil
    
  end

end
