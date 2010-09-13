require 'spec_helper'

describe Doctor do
  before(:each) do
    @valid_attributes = {
      :full_name => "Bishnu",
      :address => "Maharajgunj",
      :phone => "9803449843",
      :email => "realusers@gmail.com",
      :optional_info => "description here"
    }
  @existing_user=Doctor.create(@valid_attributes)
  end

 
  it "should enforce the uniqueness of the users' name" do
    new_user=Doctor.new(:full_name=>"Bishnu")
    new_user.should_not be_valid
  end
  
end


