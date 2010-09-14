require 'spec_helper'

describe DepartmentDoctor do
  
  describe "fetches department for a doctors" do
    before do
      @doctors = (1..5).map { |i| mock_model(Doctor, :full_name => "doctor-#{i}") }
      #@doctors= Doctor.stub(:find).and_return([@doctors])
    end


  end
end
