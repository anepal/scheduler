class DepartmentsController < InheritedResources::Base
  layout "application"
  actions :all
  respond_to :html
  respond_to :js
 def show_doctors
   raise Department.find(params[:id]).inspect
  @doctors=Department.find(params[:id]).doctors
 end
end
