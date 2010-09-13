#require 'spec_helper'
require File.expand_path(File.dirname(__FILE__)+ '/../spec_helper')

describe DoctorsController do

 it "should map {:controller=>'doctors',:action=>'index'} to /doctors" do
    route_for(:controller=>'doctors',:action=>'index').should=='/doctors'

  end
  #Delete this example and add some real ones

  describe DoctorsController, 'handling GET /doctors' do

    before do
      @doctor=mock_model(Doctor)
      Doctor.stub(:find).and_return([@doctor])
    end

    def do_get
      get :index
    end

    it "should  be successful" do
      do_get
      response.should be_success
    end

    it "should render index template" do
      do_get
      response.should render_template('index')
    end
#
#    it "should find all doctors" do
#      Doctor.should_receive(:find).with(:all).and_return([@doctor])
#    end

    it "should assign found Doctor to the view" do
      do_get
      assigns(:doctors).should==[@doctor]
    end
  end
end
