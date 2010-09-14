class DepartmentsController < InheritedResources::Base
  layout "application"
  actions :all
  respond_to :html
  respond_to :js
 def show_doctors
   @department=Department.find(params[:id])
   @doctors=Department.find(params[:id]).doctors
 end
end
