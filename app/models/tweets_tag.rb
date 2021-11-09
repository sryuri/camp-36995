class TweetsTag

    include ActiveModel::Model
    attr_accessor :text, :name, :image
  
    with_options presence: true do
      validates :text
      validates :name
      validates :image
    end
  
    def save
      tweet = Tweet.create(text: text)
      tweet = Tweet.create(image: image)
      tag = Tag.create(name: name).first_or_initialize
      tag.save
  
      TweetTagRelation.create(tweet_id: tweet.id, tag_id: tag.id)
    end
  
  end