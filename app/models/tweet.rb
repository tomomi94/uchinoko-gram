class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :hashtags, through: tweet_hashtags
  has_many :tweet_hashtags
  has_one_attached :image

end
