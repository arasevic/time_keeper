Feature: Admin logging out

	Scenario: An admin wants to logout of the system
		Given an admin is logged into the system
		When he clicks on the log out button
		Then he will be signed out 
		And returned to the home screen