class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @accountname = user.accountname
    @tweets = user.tweets
  end
end
