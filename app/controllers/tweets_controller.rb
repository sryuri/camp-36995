class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.order(created_at: :desc)
  end

  def new
    @tweet = TweetsTag.new
  end

  def create
    @tweet = TweetsTag.new(tweet_params)
     if @tweet.valid?
        @tweet.save
        return redirect_to root_path
     else
        render :new
     end
  end

  def show
    @tweet = Tweet.find(params[:id]) 
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)  
  end  

  def destroy
    tweet = Tweet.find(params[:id])
    tweet_tag_relation  = TweetTagRelation.find_by(tweet_id: params[:id])
    tag = Tag.find(tweet_tag_relation.tag_id)
    tweet.destroy
    tweet_tag_relation.destroy
    tag.destroy
    redirect_to root_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end    

  def update
    @tweet = TweeTag.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to tweet_path
    else
       render :edit
    end
  end    



  private

  def tweet_params
    params.require(:tweets_tag).permit(:text, :image, :name).merge(user_id: current_user.id)
  end


end
