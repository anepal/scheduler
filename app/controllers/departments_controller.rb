 def show_doctors
  #raise  DepartmentDoctor.find(:all).inspect
   @department=Department.find(params[:id])
  @doctors=Department.find(params[:id]).doctors.find(:all,:conditions =>["start_time!='NULL'"])
  

 end
class DepartmentsController < ApplicationController
end
