class LikesController < ApplicationController
  def create
    @like = User.find(current_user.id).likes.build(like_params)
    @post = Post.find(like_params[:post_id])

    if @like.save
      redirect_to @post, notice: 'Post liked.'
    else
      render @post, status: :unprocessable_entity
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @post = Post.find(@like.post_id)
    @like.destroy!
    redirect_to @post, status: :see_other, notice: 'Post unliked.'
  end

  private

  def like_params
    params.expect(like: %i[post_id])
  end
end
