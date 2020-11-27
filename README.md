# README

## users テーブル

| Column              | Type   | Options     |                               
| --------            | ------ | ----------- |
| name                | string | null: false |
| email               | string | null: false |
| encrypted_password  | string | null: false |

### Association
- has_many :questions
- has_many :answers


## questions テーブル

| Column        | Type       | Options           |
| --------      | ------     | -----------       |
|  word         | string     | null:false        |
|  sentence     | text       | null:false        |

### Association
- belongs_to :users
- has_one    :answer


## answers テーブル

| Column         | Type       | Options          |
| --------       | ------     | -----------      |
| Japanese       | string     | null: false
| Commentary     | text       | null: false      |

### Association
- belongs_to :user
- belongs_to :question 



## toppages テーブル

| Column    | Type       | Options                        |
| -------   | ---------- | ------------------------------ |
| content   | string     |                                |
| user      | references | null: false, foreign_key: true |
| question  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to question


