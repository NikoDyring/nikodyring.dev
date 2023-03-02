FactoryBot.define do
  factory :article do
    headline { "Example Headline" }
    subtitle { "Example Subtitle" }
    text { "Example Text" }
    featured_image { nil }
    category { 1 }
    status { 1 }
  end
end
