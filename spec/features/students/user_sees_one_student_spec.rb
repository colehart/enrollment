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

  it 'shows no addresses message' do
    student1 = Student.create!(name: 'Cole Hart')
    no_address_msg = 'Student has no registered addresses'

    visit student_path(student1)

    expect(page).to have_content(no_address_msg)
  end

  it 'shows all addresses' do
    student1 = Student.create!(name: 'Cole Hart')
    address1 = student1.addresses.create!(description: 'home',
                                         street: '805 Turing Blvd',
                                         city: 'London',
                                         state: 'England',
                                         zip_code: '80026')

    address2 = student1.addresses.create!(description: 'work',
                                         street: '101 Main St',
                                         city: 'Denver',
                                         state: 'Colorado',
                                         zip_code: '80002')
    visit student_path(student1)
    expect(page).to have_content(address1.description)
    expect(page).to have_content(address2.description)
  end

  it 'shows all courses' do
    student1 = Student.create!(name: 'Cole Hart')
    course1 = student1.courses.create!(title: 'English 101')
    course2 = student1.courses.create!(title: 'Algebra 201')

    visit student_path(student1)

    expect(page).to have_content(course1.title)
    expect(page).to have_content(course2.title)
  end
end
