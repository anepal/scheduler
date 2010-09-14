require 'spec_helper'

describe DepartmentDoctor do
  
  describe "fetches department for a doctors" do
    before do
      @doctors = (1..5).map { |i| mock_model(Doctor, :full_name => "doctor-#{i}") }
      #@doctors= Doctor.stub(:find).and_return([@doctors])
    end

    it "should call fetch_and_create... for each doctor" do
      Doctor.should_receive(:doctor).with(:all).and_return(@doctors)
#      @doctors.each do |doctor|
#        DepartmentDoctor.should_receive(:fetch_and_create_department_doctor_for_doctor).with(doctor).and_return(nil)
#      end
      #DepartmentDoctor.fetch_departments_for_all_doctor
    end
   end

#  before(:each) do
#    @valid_attributes = {
#      :doctor => ,
#      :department => ,
#      :string => ,
#      :string =>
#    }
#  end
#
#  it "should create a new instance given valid attributes" do
#    DepartmentDoctor.create!(@valid_attributes)
#  end
end
