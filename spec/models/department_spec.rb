require 'spec_helper'

describe Department do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :address => "value for address",
      :phone => "value for phone",
      :optional_info => "value for optional_info"
    }
  end

  it "should create a new instance given valid attributes" do
    Department.create!(@valid_attributes)
  end
end
