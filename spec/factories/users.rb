FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { 'test@example' }
    password              { 'test11' }
    password_confirmation { password }
    first_name            { '太郎' }
    last_name             { '佐藤' }
    first_name_kana       { 'タロウ' }
    last_name_kana        { 'サトウ' }
    birth_date            { '2000-01-01' }
  end
end
