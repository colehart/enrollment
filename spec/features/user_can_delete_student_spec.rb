require 'rails_helper'

describe 'user deletes a student' do
  scenario 'user can delete a student' do
    expendable_name = 'An expendable student'
    student = Student.create!(name: expendable_name)

    visit students_path

    expect(page).to have_content(expendable_name)

    within(".student_#{student.id}") do
      click_on 'Delete'
    end

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(expendable_name)
  end
end
