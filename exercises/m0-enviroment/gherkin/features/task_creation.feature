Feature: Task Creation

		Background:Given I am on the task list page

        Scenario: User cannot create a task with empty description
				When I click the "Add Task" button without entering a description
				Then  I should see a validation message "Task description is required"
				And no new task is added to the list
				
		Scenario: User creates a task with valid description
		    When I enter "Buy groceries" in the task description field
		    And I click the "Add Task" button
		    Then I should see "Buy groceries" in my task list