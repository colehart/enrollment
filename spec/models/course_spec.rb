# spec/models/course
require 'rails_helper'

describe Course, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
  describe 'relationships' do
    it { should have_and_belong_to_many(:students) }
  end
end
