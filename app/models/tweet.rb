class Tweet < ApplicationRecord
  belongs_to :user
  # has_many :likes
  # has_many :comments
  # has_many :hashtags, through: tweet_hashtags
  # has_many :tweet_hashtags
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :pet_type
  belongs_to :gender

  with_options presence: true do
    validates :text
    validates :age
    validates :image
    validates :pet_type_id, numericality: { other_than: 1 }
  end
  validates :gender_id, numericality: { other_than: 1 }
end
