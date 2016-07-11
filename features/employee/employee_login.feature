Feature: Admin login

	Scenario: Succesful login as an employee
		Given that I am an employee
		When I naviage to the login page 
		And provide my correct email and password
		Then I will be directed to add work hours

	Scenario: Unsuccesful login as an employee
		Given that I am an employee
		When I naviage to the login page
		And provide an incorrect email or password
		Then I will be prompted to try again