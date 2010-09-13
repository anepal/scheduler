Given /^I have doctors named (.*)$/ do |doctors|
  doctors.split(',').each do |doctor|
   doctor= Doctor.create(:full_name=>doctor)
   doctor.save
  end
end

Given /^the following doctor records$/ do |table|
  # table is a Cucumber::Ast::Table
 table.hashes.each do |hash|
    Doctor.create!(hash)
 end
end

