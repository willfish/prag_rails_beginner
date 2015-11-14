FactoryGirl.define do
  factory :movie do
    title { Faker::Company.name }
    rating { "PG13" }
    total_gross { Faker::Number.between(500000.0, 1000000.0).round(2) }
    description { "A fantastical movie." }
    released_on { Faker::Date.backward }
    # cast "Some cast"
    # director "Jon Favreau"
    # duration "126 min"
    # image_file_name "ironman.jpg"
  end
end
