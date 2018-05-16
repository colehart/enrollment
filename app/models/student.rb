# app/models/student
class Student < ApplicationRecord
  validates_presence_of :name
  has_many :addresses
  has_and_belongs_to_many :courses
end
