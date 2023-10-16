FactoryBot.define do
  factory :purchase_shipping_address do
    postal_code { '123-4567' }
    prefecture_id { 2 }
    city { Faker::Address.city }
    address { Faker::Address.street_address }
    building { Faker::Address.secondary_address }
    phone_number { Faker::Number.leading_zero_number(digits: 11) }
    token { 'tok_abcdefghijk00000000000000000' }

  end
end
