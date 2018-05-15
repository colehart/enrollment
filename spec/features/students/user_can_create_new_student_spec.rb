# feature test for student :new view
require 'rails_helper'

describe 'user creates a new student' do
  describe 'clicks on create button and is redirected to new view' do
    it 'they fill in a name and are directed to show page' do
      visit students_path
      click_link 'Create New Student'

      expect(current_path).to eq(new_student_path)
    end
    it 'they fill in a name and are directed to show page' do
      newest_student_name = 'Newest Student Name!'

      visit new_student_path

      fill_in 'student[name]', with: newest_student_name
      click_on 'Submit'

      expect(page).to have_content(newest_student_name)
    end
  end
end
