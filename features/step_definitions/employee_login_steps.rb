Given(/^I am an employee$/) do
  
end

When(/^I navigate to the login page$/) do
  visit root_path	

end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_text(arg1)
end