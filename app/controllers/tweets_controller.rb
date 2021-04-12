class TweetsController < ApplicationController
  def index
  end

  private

  def tweet_params
    params.require(:tweet).permit(:accountname, :image, :text, :pet_type_id, :age, :gender_id).merge(user_id: current_user.id)
  end

end
