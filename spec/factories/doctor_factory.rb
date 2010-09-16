Factory.define(:doctor) do |doctor|
  doctor.sequence(:fill_name) {|n| "Doctor #{n}" }
end
