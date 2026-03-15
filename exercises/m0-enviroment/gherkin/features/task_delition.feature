Feature: Task Deletion

		Background:
				Given I am on the task list page

		Scenario: User deletes an incomplete task
				Given I have an incomplete task "Buy groceries"
    			When I click the Delete button on "Buy groceries"
    			Then a confirmation dialog should appear
    			When I confirm the deletion
    			Then "Buy groceries" should be removed from the task list

		 Scenario: User cancels deletion of a task
    			Given I have an incomplete task "Buy groceries"
    			When I click the Delete button on "Buy groceries"
    			Then a confirmation dialog should appear
    			When I cancel the deletion
    			Then "Buy groceries" should remain in the task list

		Scenario: User Deletes a completed Tasks
				Given I have a completed task "Buy groceries"
    			When I click the Delete button on "Buy groceries"
    			Then a confirmation dialog should appear
    			When I confirm the deletion
    			Then "Buy groceries" should be removed from the task list
		
		Scenario: User deletes all completed tasks
    			Given I have multiple completed tasks in my list
    			When I click the "Delete All Completed" button
    			Then a confirmation dialog should appear
    			When I confirm the deletion
    			Then all completed tasks should be removed from the task list
