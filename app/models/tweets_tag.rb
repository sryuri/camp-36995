class TweetsTag

    include ActiveModel::Model
    attr_accessor :text, :name, :image, :user_id
  
    with_options presence: true do
      validates :text
      validates :name
      validates :image
      validates :user_id
    end
  
    def save
      tweet = Tweet.create(text: text, user_id: user_id, image: image)
      tag = Tag.create(name: name, user_id: user_id)
  
      TweetTagRelation.create(tweet_id: tweet.id, tag_id: tag.id, user_id: user_id)
    end
  
  end