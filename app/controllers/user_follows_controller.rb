class UserFollowsController < ApplicationController
  def create
    @user_follow = User.find(current_user.id).followers.build(user_follow_params)
    @follow_request = User.find(current_user.id).follower_requests.where('follow_submitter_id = ?',
                                                                         user_follow_params[:follower_id]).first

    if @user_follow.save
      @follow_request.destroy!
      redirect_to current_user, notice: 'Follower accepted.'
    else
      render current_user, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def user_follow_params
    params.expect(user_follow: %i[follower_id])
  end
end
