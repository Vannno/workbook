
<img width="896" alt="image" src="https://user-images.githubusercontent.com/72539482/101239713-2d6b6100-372d-11eb-83ec-3b160bc508da.png">

# README

## users テーブル

| Column              | Type   | Options     |                               
| --------            | ------ | ----------- |
| name                | string | null: false |
| email               | string | null: false |
| encrypted_password  | string | null: false |

### Association
- has_many :question_users
- has_many :questions, through: question_users
- has_many : answers

## questions テーブル

| Column        | Type       | Options           |
| --------      | ------     | -----------       |
|  name         | string     | null:false        |

### Association
- has_many :question_users
- has_many :users, through: question_users
- has_many :answers


## question_users テーブル

| Column      | Type       | Options          |
| --------    | ------     | -----------      |
| user        | string     | null: false, foreign_key: true | 
| question    | text       | null: false, foreign_key: true |      

### Association
- belongs_to :question
- belongs_to :user 

## answers テーブル

| Column         | Type       | Options          |
| --------       | ------     | -----------      |
| content        | string     |                  |
| user           | string     | null: false
| question       | text       | null: false     |

### Association
- belongs_to :user
- belongs_to :question 


