Feature: Employee login

	Scenario: Successful login as an employee
		Given that I am an employee with the role of a contractor
		When I navigate to the login page
		And provide my correct email and password
		Then I should see "Welcome back, Kevin!"

	Scenario: Unsuccessful login as an employee
	  Given that I am an employee with the role of a contractor
	  When I navigate to the login page
	  And provide an incorrect email or password
	  Then I should see "Invalid email/password combination!"	
