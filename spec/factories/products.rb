require 'faker'

FactoryGirl.define do
  factory :product do |f|
    f.name { Faker::Commerce.product_name }
    f.description { Faker::Lorem.paragraph(2) }
    f.price { Faker::Commerce.price }
    f.link { Faker::Internet.url }
    f.user_id { Faker::Number.digit }
    f.store_id { Faker::Number.digit }
    f.occasion_id { Faker::Number.digit }
    f.relationship_id { Faker::Number.digit }
  end
end