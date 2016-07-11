Feature: Admin login

	Scenario: Succesful login as an admin
		Given that I am an admin
		When I naviage to the login page 
		And provide my correct email and password
		Then I will be directed to a list of my employees

	Scenario: Unsuccesful login as an admin
		Given that I am an admin
		When I naviage to the login page
		And provide the incorrect email or password
		Then I will be prompted to try again