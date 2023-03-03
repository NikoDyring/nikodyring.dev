require 'rails_helper'

RSpec.describe Role, type: :model do
  context 'validations' do
    it { should validate_presence_of(:position) }
    it { should validate_presence_of(:company) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:start_time) }
  end
end
