FactoryBot.define do
  factory :item do
    association :user

    item_name          { 'テスト' }
    explain            { Faker::Lorem.sentence }
    category_id        { 2 }
    condition_id       { 2 }
    fee_status_id      { 2 }
    prefecture_id      { 2 }
    delivery_schedule_id { 2 }
    price { 1000 }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
