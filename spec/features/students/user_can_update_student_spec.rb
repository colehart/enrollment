# feature test for student :edit view
require 'rails_helper'

describe 'user edits an existing student' do
  scenario 'user can edit a student' do
    student = Student.create!(name: 'Judson Stevens')
    updated_student_name = 'Jamison Awesomesauce'

    visit edit_student_path(student)

    fill_in 'student[name]', with: updated_student_name
    click_on 'Update'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(updated_student_name)
  end
end
