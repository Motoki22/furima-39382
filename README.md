
#usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false ,ユニーク制約|
| name               | string | null: false |
| encrypted_password | string | null: false |
| birth-date         |  date  | null: false |

has_many :items
has_many :purchases

#itemsテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| item-name       | string | null: false |
| price              | integer | null: false |
| image              | string | null: false |
| explain            | text   | null: false |
| category           | string | null: false |
| condition          | string | null: false |
| fee-status         | string | null: false |
| area               | string | null: false |
| delivery-schedule  | string | null: false |
| user-id            | references | null: false, foreign_key: true |

belongs_to :users
has_one :purchases

#purchasesテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user-id            | references | null: false, foreign_key: true |
| item-id            | references | null: false, foreign_key: true |

belongs_to :users
belongs_to :items
has_one : shipping information


#shipping information

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| product-name       | integer | null: false |
| prefecture         | string | null: false |
| city               | string | null: false |
| addresses          | string | null: false |
| building           | string |  |
| phone-number       | integer | null: false |

belongs_to :shipping information