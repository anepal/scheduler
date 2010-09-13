class Doctor < ActiveRecord::Base
  #has_many :departments, :through => :schedule
  validates_uniqueness_of :full_name
end
