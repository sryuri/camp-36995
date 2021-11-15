## アプリケーション名
Camper's Breakroom

## アプリケーション概要
キャンプに特化した投稿アプリケーションです。
本アプリケーションでは、キャンプの好きな人たちが、キャンプに行った時の画像や体験記を投稿できます。また、コメント機能を通して他のユーザーと交流を持つことができます。

## 制作背景(意図)
コロナ禍で屋外レジャーの需要が高まり、キャンプも人気を集めています。それに伴い、キャンプ場の検索サイトや紹介サイトが増えてきましたが、キャンプを好きな人々が交流する場や体験等を綴る場がインスタグラム以外にないことが、本アプリケーションを作るきっかけとなりました。


## DEMO
[![Image from Gyazo](https://i.gyazo.com/ec613b52bc91e2b16a04beca7aebeb43.gif)](https://gyazo.com/ec613b52bc91e2b16a04beca7aebeb43)

[![Image from Gyazo](https://i.gyazo.com/22081e02d631f2fe5bda4cf74d225571.gif)](https://gyazo.com/22081e02d631f2fe5bda4cf74d225571)

[![Image from Gyazo](https://i.gyazo.com/73b87428dcf42456ca1a55ce42a80f19.gif)](https://gyazo.com/73b87428dcf42456ca1a55ce42a80f19)

## 実装予定の内容
- いいね機能<br>
(投稿画面にて画像の添付及びテキスト、タグを入力し、投稿をする)
- コメント機能<br>
(他のユーザーが投稿した画像の詳細ページにてコメントをする)
- 検索機能<br>
(探したい画像のタグを入力して、画像の検索を可能にする)

## DB設計
[![Image from Gyazo](https://i.gyazo.com/55dd2f4f022322e3c5692043ea44d58e.png)](https://gyazo.com/55dd2f4f022322e3c5692043ea44d58e)

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
