# README

# AppName
uchinoko-gram(ウチノコグラム)

## Descriptions
- 写真投稿(編集/削除も可能)
- コメント機能
- いいね機能
- 新規登録/ログイン

## AppURL（※実装後記述）


## Production
自分のペットのかわいい・おもしろい画像を投稿できるアプリケーション。
SNSにはさまざまな画像が投稿されているため、ペットの画像だけを投稿できるアプリケーションを制作。また投稿だけではなく飼い主同士が交流できるようにいいねやコメントができる機能を実装。

## 実装予定の内容
- 写真投稿(編集/削除も可能)
- コメント機能
- いいね機能
- 新規登録/ログイン

## DEMO（※実装後記述）


## Account（※実装後記述）
### Basic
id:
pass:

### LoginPass
mail:
pass:

## テーブル設計

### users テーブル
| Column      | Type   | Options                   |
| ----------- | ------ | ------------------------- |
| accountname | string | null: false               |
| email       | string | null: false, unique: true |
| password    | string | null: false               |

#### Association
- has_many :tweets
- has_many :likes
- has_many :comments

### tweets テーブル
| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| text        | text       | null: false                    |
| pet_type_id | integer    | null: false                    |
| gender_id   | integer    |                                |
| age         | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |

#### Association
- belongs_to :user
- has_many :likes
- has_many :comments
- has_many :hashtags, through: tweet_hashtags
- has_many :tweet_hashtags

### comments テーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       |                                |
| tweet  | references | null: false, foreign_key: true |
| user   | references | null: false, foreign_key: true |

#### Association
- belongs_to :user
- belongs_to :tweet

### likes テーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| tweet  | references | null: false, foreign_key: true |
| user   | references | null: false, foreign_key: true |

#### Association
- belongs_to :tweet
- belongs_to :user

### hashtags テーブル
| Column        | Type   | Options                       |
| ------------- | ------ | ----------------------------- |
| name          | string | null: false, uniqueness: true |

#### Association
- has_many :tweet, through: tweet_hashtags
- has_many :tweet_hashtags

### tweet_hashtags テーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| tweet   | references | null: false, foreign_key: true |
| hashtag | references | null: false, foreign_key: true |

#### Association
- belongs_to :tweet
- belongs_to :hashtag