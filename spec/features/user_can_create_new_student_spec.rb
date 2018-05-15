# feature test for student :new view
require 'rails_helper'

describe 'user creates a new student' do
  describe 'clicks on create button and is redirected to new view' do
    it 'they fill in a name and are directed to show page' do
      visit students_path
      click_link 'Create New Student'

      expect(current_path).to eq(new_student_path)
    end
    # it 'they fill in a name and are directed to show page' do
    #   visit students_path
    #   click_link 'Create New Student'
    #
    #   fill_in 'student[name]', with: 'New Student Name!'
    #   click_on 'Submit'
    #
    #   expect(current_path).to eq(student_path)(Student.find_by(name: 'New Student Name!')
    #   expect(page).to have_content('New Student Name!')
    # end
  end
end
