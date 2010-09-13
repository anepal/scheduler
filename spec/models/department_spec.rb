require 'spec_helper'

describe Department do
  before(:each) do
    @valid_attributes = {
      :name => "OPD",
      :address => "Kantipath",
      :phone => "01434343",
      :optional_info => "additional info"
    }
    Department.create(@valid_attributes)
  end

  it "should enforce the uniqueness of the users' name" do
    new_user=Department.new(:name=>"OPD")
    new_user.should_not be_valid
  end
end
