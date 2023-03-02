require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  context 'validations' do
    it { should validate_presence_of(:headline) }
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:status) }
  end

  context 'enums' do
    it { should define_enum_for(:category) }
    it { should define_enum_for(:status) }
  end
end
