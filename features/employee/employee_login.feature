Feature: Employee login

	Scenario: successfully login as an employee
		Given I am an employee
		When I navigate to the login page
		Then I should see "Helloooo Nikola!!!!"