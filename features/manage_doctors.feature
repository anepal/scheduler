Feature: Manage Doctors
  In order to save doctors information
  As an administrator
  I want to create and manage doctors
Scenario: Doctors List
    Given I have doctors named Ram,Shyam
    When I go to the list of doctors
    Then I should see "Ram"
    And I should see "Shyam"
    
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
    Given the following doctor records
     |full_name|address|
     |Ram|Kathmandu,Nepal|
     |Shyam|Butwal,Nepal|
    Then I am on Edit "Ram" I
    Then I fill in "Address" with "Biratnagar,Nepal"
    When I press "Update"
    Then I should see "Doctor successfully updated"
     And I should see "Biratnagar,Nepal"