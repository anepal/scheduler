Given /^I have departments named (.*)$/ do |departments|
  departments.split(',').each do |department|
   department = Department.create(:name=>department)
   department.save
  end
end

Given /^the following departments records$/ do |table|
  # table is a Cucumber::Ast::Table
 table.hashes.each do |hash|
    Department.create!(hash)
 end
end
