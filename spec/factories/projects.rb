FactoryBot.define do
  factory :project do
    title { "Project" }
    description { "A new exciting project!" }
    url { "https://github.com/nikodyring/personal_portfolio" }
    status { 1 }
    icon { nil }
  end
end
