require 'rails_helper'

RSpec.describe Project, type: :model do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:status) }
  end

  context 'enums' do
    it { should define_enum_for(:status) }
  end
end
