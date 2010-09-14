require 'spec_helper'

describe DepartmentsController do

  #Delete this example and add some real ones
   it "should map {:controller=>'departments',:action=>'index'} to /departments" do
    route_for(:controller=>'departments',:action=>'index').should=='/departments'

  end
  #Delete this example and add some real ones

  describe DepartmentsController, 'handling GET /departments' do

    before do
      @department=mock_model(Department)
      Department.stub(:find).and_return([@department])
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


    it "should assign found Department to the view" do
      do_get
      assigns(:departments).should==[@department]
    end
  end

end
