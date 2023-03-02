FactoryBot.define do
  factory :article do
    headline { "MyString" }
    text { "MyString" }
    featured_image { nil }
    category { 1 }
    status { 1 }
  end
end
