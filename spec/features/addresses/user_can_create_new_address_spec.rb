require 'rails_helper'

describe 'when user visits student address page' do
  scenario 'a user can create new address by filling out a form' do
    student = Student.create!(name: 'Alan Turing')

    visit new_student_address_path(student)

    description = 'home'
    street = '805 Turing Blvd'
    city = 'London'
    state = 'England'
    zip_code = '80026'

    fill_in 'address[description]', with: description
    fill_in 'address[street]', with: street
    fill_in 'address[city]', with: city
    fill_in 'address[state]', with: state
    fill_in 'address[zip_code]', with: zip_code

    click_on 'Create Address'

    expect(current_path).to eq(student_path(student))

    expect(page).to have_content(description)
    expect(page).to have_content(street)
    expect(page).to have_content(city)
    expect(page).to have_content(state)
    expect(page).to have_content(zip_code)
  end
end
