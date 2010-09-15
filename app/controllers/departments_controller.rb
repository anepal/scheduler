class DepartmentsController < InheritedResources::Base
  layout "application"
  actions :all
  respond_to :html
  respond_to :js
 def show_doctors
  #raise  DepartmentDoctor.find(:all).inspect
   @department=Department.find(params[:id])
  @doctors=Department.find(params[:id]).doctors.find(:all,:conditions =>["start_time!='NULL'"])
  

 end
end
