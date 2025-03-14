class CommentsController < ApplicationController
  def create
    @comment = User.find(current_user.id).comments.build(comment_params)
    @post = Post.find(comment_params[:post_id])

    if @comment.save
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.expect(comment: %i[comment post_id])
  end
end
