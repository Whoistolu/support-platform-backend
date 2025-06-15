FactoryBot.define do
  factory :support_ticket do
    title { "MyString" }
    description { "MyText" }
    status { "MyString" }
    user { nil }
  end
end
