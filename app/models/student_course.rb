# app/models/student_course
class StudentCourse < ApplicationRecord
  belongs_to :student
  belongs_to :course
end
