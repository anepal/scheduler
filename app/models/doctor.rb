class Doctor < ActiveRecord::Base
  validates_uniqueness_of :full_name
end
