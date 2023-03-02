require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validations' do
    it { should validate_presence_of(:headline) }
    it { should validate_presence_of(:subtitle) }
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:status) }
  end

  context 'enums' do
    it { should define_enum_for(:category) }
    it { should define_enum_for(:status) }
  end

  describe '#set_published_at' do
    let(:article) { create(:article, status: :draft, featured_image: nil) }

    context 'when status is changed to published' do
      it 'sets the published_at attribute' do
        expect {
          article.published!
          article.reload
        }.to change(article, :published_at).from(nil)
      end
    end

    context 'when status is not changed to published' do
      it 'does not set the published_at attribute' do
        expect {
          article.update(headline: 'New Title')
          article.reload
        }.not_to change(article, :published_at)
      end
    end
  end
end
