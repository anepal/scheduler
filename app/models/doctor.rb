class Doctor < ActiveRecord::Base
  has_many :department_doctors
  has_many :departments, :through => :department_doctors
  validates_uniqueness_of :full_name
end
