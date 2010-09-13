Feature: Manage Departments
  In order to save departments information
  As an administrator
  I want to create and manage departments
Scenario: Departments List
    Given I have departments named Pharmacy,OPD
    When I go to the list of departments
    Then I should see "Pharmacy"
    And I should see "OPD"
Scenario: Create Doctor
    Given I am on the list of doctors
    When I follow "Create New"
    Then I fill in "Full Name" with "Bishu"
    Then I fill in "Address" with "Kathmandu,Nepal"
    When I press "Create New"
    Then I should see "Doctor was successfully created."
    And I should see "Bishu"
    And I should see "Kathmandu,Nepal"
    When I follow "Show All"