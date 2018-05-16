# spec/features/ student :show test
require 'rails_helper'

describe 'user sees one student' do
  it 'shows one student and navigation' do
    course1 = Course.create!(title: 'English 101')
    student_index_button = 'All Students'
    new_student_button = 'Create New Student'

    visit course_path(course1)

    expect(page).to have_content(student1.name)
    expect(page).to have_link(student_index_button)
    expect(page).to have_link(new_student_button)
  end

  it 'shows all students' do
    course1 = Course.create!(title: 'English 101')
    student1 = course1.students.create!(name: 'Alan Turing')
    student2 = course1.students.create!(name: 'Judson Stevens')

    visit course_path(course1)

    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
  end
end
