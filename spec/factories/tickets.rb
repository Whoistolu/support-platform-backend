FactoryBot.define do
  factory :ticket do
    title { "MyString" }
    description { "MyText" }
    status { 1 }
    customer { nil }
    assigned_agent { nil }
  end
end
