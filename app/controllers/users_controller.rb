class UsersController < ApplicationController
  def destroy
    @user = current_user
    @tweets = Tweet.find_by(user_id: params[:id])
    
    if @tweets.nil?
      @user.destroy
      redirect_to root_path
    else
      @tweets.destroy
      @user.destroy
      redirect_to root_path
    end
  end
end
