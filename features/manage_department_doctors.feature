Feature: List the schedule of doctors in a department
  In order to show the schedule of doctors in department
  As an administrator
  I want to see schedule of doctors department wise

Scenario: Department Doctors List
  Given the following department records
    |id|name|address|
    |1|OPD|Kathmandu|
    |2|Emergency|Patan|
  Given the following doctors records
    |id|full_name|address|phone|
    |1|Ram Prasad|Kathmandu|9808989898|
    |2|Hari Kumar|Patan|9808989890|
    |2|Hari Rimal|Patan|7808989890|
  Given the following department_doctors records
    |department_id|doctor_id|start_time|end_time|
    |1|1|10:20|12:20|
    |1|2|12:00|1:00|
  When I follow Show Doctors link on "OPD"
  Then I am on Show Doctor page for "OPD"
  And I should see "OPD" Department
  And I should see Ram Prasad, Hari Kumar