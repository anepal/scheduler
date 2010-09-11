require 'spec_helper'

describe Doctor do
  before(:each) do
    @valid_attributes = {
      :full_name => "value for full_name",
      :address => "value for address",
      :phone => "value for phone",
      :email => "value for email",
      :optional_info => "value for optional_info"
    }
  end

  it "should create a new instance given valid attributes" do
    Doctor.create!(@valid_attributes)
  end
end
