require 'spec_helper'

describe Department do
  subject { Factory.build(:department) }
  it { should be_valid }
  it { should have_many :department_doctors }
  it { should have_many :doctors }
  it { 
    Factory.create(:department)
    should validate_uniqueness_of :name
  }
end
