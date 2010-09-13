Feature: Manage Departments
  In order to save departments information
  As an administrator
  I want to create and manage departments
Scenario: Departments List
    Given I have departments named Pharmacy,OPD
    When I go to the list of departments
    Then I should see "Pharmacy"
    And I should see "OPD"