class DoctorsController < ApplicationController
  belongs_to :department

  private

  def build_resource
    @doctor ||= Doctor.new(params[:doctor])
    @doctor.department_doctors.build(:department_id => parent.id)
    @doctor
  end

end
