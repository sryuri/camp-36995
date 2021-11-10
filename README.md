## アプリケーション名
-------
camp

## アプリケーション概要
-------
キャンプに特化した画像の投稿サイトです。
キャンプの好きな人たちが、キャンプに行った時の画像や体験記を投稿できます。
また、コメント機能を通して他のユーザーと交流を持つことができます。

## 制作背景(意図)
-------
コロナ禍で屋外レジャーの需要が高まり、キャンプも人気を集めています。
家族連れだけでなく、女子キャンプや１人で参加するソロキャンンプもブームとなりました。
現在では、キャンプ場の検索サイトや紹介サイト等が増えてきましたが、
キャンプを好きな人々が交流する場や体験等を綴る場がインスタグラム以外にないことが、
アプリケーションを作るきっかけとなりました。

## DEMO
-------


## 実装予定の内容
-------
- いいね機能<br>
　(投稿画面にて画像の添付及びテキスト、タグを入力し、投稿をする)
- コメント機能<br>
(他のユーザーが投稿した画像の詳細ページにてコメントをする)
- 投稿機能<br>
(投稿した画像及びいいねした他のユーザーの画像をマイページで管理する)

## DB設計
-------



## users テーブル


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
