class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
    @tweet = TweetsTag.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
     if @tweet.valid?
        @tweet.save
        return redirect_to root_path
     else
        render :new
     end
  end

  def show
    @tweet = Tweet.find(params[:id])   
  end  




  private

  def tweet_params
    params.require(:tweets_tag).permit(:text, :image, :name).merge(user_id: current_user.id)
  end


end
