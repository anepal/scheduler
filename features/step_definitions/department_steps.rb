Given /^I have departments named (.*)$/ do |departments|
  departments.split(',').each do |department|
   department = Department.create!(:name=>department)
   department.save
  end
end
