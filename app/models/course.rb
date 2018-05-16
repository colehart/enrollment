# app/models/course
class Course < ApplicationRecord
  validates_presence_of :name
  has_many :students
end
