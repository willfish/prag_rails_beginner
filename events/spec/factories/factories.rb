FactoryGirl.define do
  factory :event do
    name { Faker::Company.name }
    location { Faker::Address.street_address }
    price { Faker::Commerce.price }
    description { 'A really cool event.' }
    starts_at { Faker::Date.forward }
  end
end
