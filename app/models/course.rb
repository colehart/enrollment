# app/models/course
class Course < ApplicationRecord
  validates_presence_of :title
  has_many :student_courses
  has_many :students, through: :student_courses
end
