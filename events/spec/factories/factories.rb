FactoryGirl.define do
  factory :event do
    name { Faker::Company.name }
    location { Faker::Address.street_address }
    price { Faker::Commerce.price }
    description do
      'A really cool event is something \
      to be proud of. Especially when you enjoy it.'
    end
    starts_at { Faker::Date.forward }
  end
end
