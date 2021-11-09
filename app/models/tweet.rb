class Tweet < ApplicationRecord

    validates :text, presence: true
    validates :image, presence: true

    belongs_to :user
    has_one_attached :image
    has_many :tweet_tag_relations
    has_many :tags, through: :tweet_tag_relations
   
end
