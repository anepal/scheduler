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

Scenario: Edit Doctor
    Given I am on the list of doctors
    Given the following departments records
     |name|address|
     |OPD|Kathmandu,Nepal|
     |Pharmacy|Butwal,Nepal|
    When I am on Edit Department "OPD"
    And I fill in "Address" with "Birgunj,Nepal"
    When I press "Save"
    Then I should see "Department was successfully updated"
     And I should see "Birgunj,Nepal"
