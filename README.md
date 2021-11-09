
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
- has_many :tweet_tag_relations
- has_many :tags, through: :tweet_tag_relations


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


## tags テーブル

| Colum              | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |  
| name               | string     | null: false, unique: true      |

### Association

- has_many :tweet_tag_relations
- has_many :tweets, through: :tweet_tag_relations


## tweet_tag_relations テーブル

| Colum              | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |  
| tweet              | references | null: false, foreign_key: true |
| tag                | references | null: false, foreign_key: true |

### Association

- belongs_to :tweet
- belongs_to :tag
