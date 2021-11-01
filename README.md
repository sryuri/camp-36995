<<<<<<< Updated upstream
# users テーブル

| Colum              | Type   | Options                   |
| ------------------ | ------ | ------------------------- |  
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| profile            | text   | null: false               |

### Association

- has_many :tweets
- has_many :comments
- has_many :likes


## tweets テーブル

| Colum              | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |  
| user               | references | null: false, foreign_key: true |
| text               | text       | null: false                    |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes


## comments テーブル

| Colum              | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |  
| tweet              | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |
| text               | text       | null: false                    |

### Association

- belongs_to :tweet
- belongs_to :user


## likes テーブル

| Colum              | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |  
| tweet              | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :tweet
- belongs_to :user
