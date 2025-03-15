class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  def index
    @users = User.all
  end

  def show
    @follower_request = @user.follower_requests.where('follow_submitter_id = ? ', current_user.id).first
    @new_follower_request = @user.followee_requests.build unless @follower_request
    @new_followers = []
    @user.follower_requests.each do |follow_request|
      @new_followers << @user.followers.build(follower_id: follow_request[:follow_submitter_id])
    end
  end

  def edit
  end

  def update
  end

  private

  def set_user
    @user = User.find(params.expect(:id))
  end
end
