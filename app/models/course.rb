# app/models/course
class Course < ApplicationRecord
  validates_presence_of :name
  has_and_belongs_to_many :students
end
