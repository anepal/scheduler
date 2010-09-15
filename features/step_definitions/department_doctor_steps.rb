Given /^the departments$/ do |table|
  # table is a Cucumber::Ast::Table
 table.hashes.each do |hash|
   Department.create!(hash)
 end
end


Given /^the "([^"]*)" has the following doctors schedule$/ do |dep, table|
  # table is a Cucumber::Ast::Table
    department=Department.find_by_name(dep)
    table.hashes.each do |hash|
      doctor= Doctor.create!(:full_name=>hash["full_name"],:phone=>["phone"])
      DepartmentDoctor.create!(:doctor=>doctor,:department=>department,:start_time=>hash["start_time"],:end_time=>["end_time"])
    end
end

When /^I follow  the Show Doctor for the "([^"]*)"$/ do |department|
    visit("departments/show_doctors/#{Department.find_by_name(department).id}")
end