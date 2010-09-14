class Doctor < ActiveRecord::Base
  has_many :department_doctor
  has_many :departments, :through => :department_doctor
  validates_uniqueness_of :full_name
end
