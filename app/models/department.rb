class Department < ActiveRecord::Base
  has_many :department_doctors
  has_many :doctors, :through => :department_doctors
  validates_uniqueness_of :name

end
