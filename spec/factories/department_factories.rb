Factory.define(:department) do |department|
  department.sequence(:name) {|n| "Department-#{n}" }
end
