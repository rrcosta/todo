FactoryBot.define do
  factory :todo_list do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    status { false }
  end
end
