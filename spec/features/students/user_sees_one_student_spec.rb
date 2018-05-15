# spec/features/ student :show test
require 'rails_helper'

describe 'user sees one student' do
  it 'shows one student and navigation' do
    student1 = Student.create!(name: 'Cole Hart')
    student_index_button = 'All Students'
    new_student_button = 'Create New Student'

    visit student_path(student1)

    expect(page).to have_content(student1.name)
    expect(page).to have_link(student_index_button)
    expect(page).to have_link(new_student_button)
  end
end
