class Department < ActiveRecord::Base
   has_many :department_doctor
  has_many :doctors, :through => :department_doctor
  validates_uniqueness_of :name
end
