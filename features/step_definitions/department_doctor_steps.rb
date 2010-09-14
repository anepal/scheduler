Given /^the following department records$/ do |table|
table.hashes.each do |hash|
    Department.create(hash)
 end
end

Given /^the following doctors records$/ do |table|
  table.hashes.each do |hash|
    Doctor.create(hash)
  end
end

Given /^the following department_doctors records$/ do |table|
  table.hashes.each do |hash|
    DepartmentDoctor.create(hash)
  end
end

When /^I follow Show Doctors link on "([^"]*)"$/ do |arg1|
  
end
