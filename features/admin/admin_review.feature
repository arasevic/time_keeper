Feature: Admin reviewing hours of employees assigned to his work group

	Scenario: An admin logs in to view employee hours and reviews them
		Given that an admin is logged in
		And see the list of his employees
		When he clicks on an employee in his group
		Then he can view, edit, and delete an employees work hours