# README


## users テーブル

| Column              | Type   | Options     |                                 
| --------            | ------ | ----------- |
| nickname            | string | null: false |
| email               | string | null: false |
| encrypted_password  | string | null: false |
### Association
- has_many :records
- has_many :items




## selection テーブル
| Column        | Type       | Options           |
| ------        | ---------- | -----------       |
| level         | references | foreign_key: true |
|               | references | foreign_key: true |
### Association
 - belongs_to :user 
 - belongs_to :item
 - has_one :address



## English テーブル

| Column               | Type       | Options           |
| --------             | ------     | -----------       |
|  words               | string     | null:false        |
|  idiom               | text       | null:false        |
| category_id          | integer    | null:false        |
| item_status_id       | integer    | null:false        |
| burden_charges_id    | integer    | mull:false        |
| delivery_source_id   | integer    | null:fa;se        |
| days_ship_id         | integer    | null:false        |
| value                | integer    | null:false        |
| user                 | references | foreign_key: true |
### Association
- belongs_to :user
- has_one :record


## Japanese テーブル

| Column         | Type       | Options          |
| --------       | ------     | -----------      |
| Japanese       | string     | null: false
| prefecture_id  | integer    | null: false      |
| city           | string     | null: false      |
| place          | string     | null: false      |
| building_name  | string
| phone_number   | string     | null: false      |
| record         | references | foreign_key:true |
### Association
- belongs_to :record