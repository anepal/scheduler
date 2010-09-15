class DepartmentDoctor < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :department
end
