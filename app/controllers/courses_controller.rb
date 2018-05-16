# app/controllers/courses_controller
class CoursesController < ApplicationController
  def show
    @course = Course.find(params[:id])
    @students = @course.students.all
  end

  private

  def course_params
    params.require(:course).permit(:title)
  end
end
