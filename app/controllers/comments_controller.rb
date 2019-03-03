class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    # @comment.user.build
    redirect_to comment_path(@comment)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_ids:[], user_attributes:[:username, :email])
  end
end
