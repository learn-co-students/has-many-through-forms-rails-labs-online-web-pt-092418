class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment= Comment.new
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    redirect_to post
  end

  def update
    post = find
    post.update(post_params)
    redirect_to post_path(post)
  end

  private

  def find
    Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name],
                                 comments_attributes: [:content, :user_id, :username])
  end
end
