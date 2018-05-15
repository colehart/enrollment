# spec/features/ student :index test
require 'rails_helper'

describe 'user sees list of students' do
  context 'they visit /students' do
    it 'shows all students' do
      student1 = Student.create!(name: 'Cole Hart')
      student2 = Student.create!(name: 'Manoj Panta')
      student3 = Student.create!(name: 'Tyler Westlie')
      new_student_button = 'Create a New Student'

      visit students_path

      expect(page).to have_link(student1.name)
      expect(page).to have_link(student2.name)
      expect(page).to have_link(student3.name)
      expect(page).to have_link(new_student_button)
    end
  end
end
