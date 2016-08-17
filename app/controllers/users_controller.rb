class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @tweets = current_user.tweets.page(params[:page]).per(5).order("created_at DESC")
    #アソシエーションを設定した場合current_user.tweetsはログインしているユーザーのすべてのツイートを取得する。

    # @tweets = Tweet.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
    
  end
end
