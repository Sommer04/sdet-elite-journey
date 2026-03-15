Feature: Task Edition

		Background:
				Given I am on the task list page
				And I have created "Buy groceries" task


		Scenario: User edits a task with new content
				When I click the Edit button on "Buy groceries"
				And I Change the task to "Pay Taxes"
				And I Press Enter on keyboard
				Then the task should display "Pay Taxes"
				
		Scenario: User confirms edit with no changes
				When I click the Edit button on "Buy groceries"
    			And I press Enter without making changes
    			Then the task should still display "Buy groceries"
				
		Scenario: User Edit Task with empty field
				When I click the Edit button on "Buy groceries"
    			And I clear the task description field
    			And I press Enter
    			Then the task should still display "Buy groceries"