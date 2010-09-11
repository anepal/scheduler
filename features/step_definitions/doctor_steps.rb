Given /^I have doctors named (.*)$/ do |doctors|
  doctors.split(',').each do |doctor|
   doctor= Doctor.create(:full_name=>doctor)
   doctor.save
  end
end
