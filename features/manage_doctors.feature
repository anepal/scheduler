Feature: Manage Doctors
  In order to save doctors information
  As an administrator
  I want to create and manage doctors
Scenario: Doctors List
    Given I have doctors named Ram,Shyam
    When I go to the list of doctors
    Then I should see "Ram"
    And I should see "Shyam"

Scenario: Delete Doctor
    Given I have list of doctors named Ram,Shyam
    When I click on delete "Ram" 
    Then I should not see "Ram"