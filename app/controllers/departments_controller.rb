class DepartmentsController < InheritedResources::Base
  layout "application"
  actions :all
  respond_to :html
  respond_to :js
end
