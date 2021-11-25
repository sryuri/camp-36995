class AddUserToTweetTagRelations < ActiveRecord::Migration[6.0]
  def change
    add_reference :tweet_tag_relations, :user, null: false, foreign_key: true
  end
end
