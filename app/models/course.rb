# app/models/course
class Course < ApplicationRecord
  validates_presence_of :title
  has_and_belongs_to_many :students
end
