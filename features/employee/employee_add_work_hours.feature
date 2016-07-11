Feature: Sumbitting work hours for a given pay period

	Scenario: An employee selects a pay period for the first time
		Given an employee is logged into the system
		And selects a pay period
		Then he should see all the dates for that pay period
		And the fields shold all be zero
		

	Scenario: Employee wants to update an existing timesheet
		Given I am logged in as an employee
		And I have existing data for a pay period
		When I select that pay period 
		Then I should see the previous entered hours 
		And I should be able to update hours

	Scenario: Employee want to sumbit a completed timesheet
		Given I am logged in as an employee
		And I have selected a pay period
		And I have entered in all the hours for that pay period
		When I enter sumbt timesheet
		Then I should see you have successfully sumbitted a timesheet 
		And I am taken to the main page

	Scenario: Employee wants to save an incomplete timesheet
		Given I am logged in as an employee
		And I have selected a pay period
		And I have entered hours for a part of the pay period
		When I click save timesheet
		Then I recieve a notification that the timesheet is saved
		And I am taken to the main page