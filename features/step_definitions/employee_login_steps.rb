Given(/^I am an employee$/) do

end

When(/^I navigate to the login page$/) do
  visit root_path
  screenshot("login")
end

#Then(/^I should see "([^"]*)"$/) do |arg1|
#  expect(page).to have_text(arg1)
#end

Given(/^that I am an employee with the role of a contractor$/) do
  # Write code here that turns the phrase above into concrete actions
  admin = FactoryGirl.create(:admin)
  wg = FactoryGirl.build(:work_group)
  wg.admin = admin
  admin.save!
  employee = FactoryGirl.build(:employee)
  employee.work_group = wg
  employee.save!

end


When(/^provide my correct email and password$/) do
  #email = page.find_by_id("email")
  #password = page.find_by_id("password")
#employee = FactoryGirl.build(:employee)
#  employee.save
  fill_in :email, with: "kevin.wei@foo.com"
  fill_in :password, with: "password"
  #debugger
  click_button :sign_in
  screenshot("step 2")
end


Then(/^I should see "([^"]*)"$/) do |arg1|
  # Write code here that turns the phrase above into concrete actions
  screenshot("failing step")
  page.should have_content(arg1)
end
