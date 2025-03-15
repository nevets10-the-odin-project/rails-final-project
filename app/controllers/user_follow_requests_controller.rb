class UserFollowRequestsController < ApplicationController
  def create
    @user_follow_request = User.find(current_user.id).followee_requests.build(user_follow_request_params)
    @user = User.find(user_follow_request_params[:follow_recipient_id])

    if @user_follow_request.save
      redirect_to @user, notice: 'User follow request sent.'
    else
      render @user, status: :unprocessable_entity
    end
  end

  def destroy
    @user_follow_request = UserFollowRequest.find(params[:id])
    @user = User.find(@user_follow_request[:follow_recipient_id])
    @user_follow_request.destroy!
    redirect_to @user, status: :see_other, notice: 'Follow request canceled.'
  end

  private

  def user_follow_request_params
    # params.require(:user_follow_request).permit(:follow_recipient_id)
    params.expect!(user_follow_request: %i[follow_recipient_id])
  end
end
