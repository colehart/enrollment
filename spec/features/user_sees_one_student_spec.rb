# spec/features/ student :show test
require 'rails_helper'

describe 'user sees one article' do
  it 'shows one student' do
    student1 = Student.create!(name: 'Cole Hart')

    expect(page).to have_content(student1.name)
  end
end
