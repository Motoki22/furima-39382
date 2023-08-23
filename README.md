
#usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false ,unique: true|
| nickname           | string | null: false |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birth_date         |  date  | null: false |

has_many :items
has_many :purchases

#itemsテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| item_name       | string | null: false |
| price              | integer | null: false |
| explain            | text   | null: false |
| category_id        | integer | null: false |
| condition_id       | integer | null: false |
| fee_status_id      | integer | null: false |
| area_id            | integer | null: false |
| delivery_schedule_id | integer | null: false |
| user            | references | null: false, foreign_key: true |

belongs_to :user
has_one :purchase

#purchasesテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user            | references | null: false, foreign_key: true |
| item            | references | null: false, foreign_key: true |

belongs_to :user
belongs_to :item
has_one : shipping_address


#shipping addresses

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| postal_code        | string | null: false |
| prefecture         | integer | null: false |
| city               | string | null: false |
| address            | string | null: false |
| building           | string |  |
| phone_number       | string | null: false |
| purchase           | references | null: false, foreign_key: true |


belongs_to :shipping_address