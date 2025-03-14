class UsersController < ApplicationController
  before_action :ser_user, only: %i[show edit update]

  def index
    @users = User.all
  end

  def show
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
