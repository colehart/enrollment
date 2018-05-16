# app/controllers/students_controller
class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @addresses = @student.addresses.all
    @courses = @student.courses.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save

    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy

    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name)
  end
end
