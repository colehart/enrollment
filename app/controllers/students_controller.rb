# app/controllers/students_controller
class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end
end
