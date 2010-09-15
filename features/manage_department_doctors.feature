Feature: List the schedule of doctors in a department
  In order to show the schedule of doctors in department
  As an administrator
  I want to see schedule of doctors department wise

Background:
 Given the departments
  |name|address|phone|
  |OPD|Kathmandu|9808989898|
  |Pharmacy|Patan|9808989890|
  |ENT|Patan|7808989890|
  And the "OPD" has the following doctors schedule
   |full_name|phone|start_time|end_time|
   |Ram Prasad|9808989898|12:15pm|2 pm|
   |Hari Kumar|9808989890|10:00am|11:00am|
   |Hari Rimal|7808989890|3pm|4pm|
Scenario: See doctor schedule
  Given I am on the list of departments
  When I follow  the Show Doctor for the "OPD"
  Then I should see "Ram Prasad"
  
  
  
  