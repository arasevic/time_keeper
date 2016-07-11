Feature: Employee logging out

	Scenario: An employee wants to logout of the system
		Given an employee is logged into the system
		When he clicks on the log out button
		Then he will be signed out 
		And returned to the home screen
