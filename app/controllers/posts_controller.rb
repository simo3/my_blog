class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:id])
    @post.save
    redirect_to "posts/#{@post.id}"
  end



  private
  def post_params
    params.require(:post).permit(
      :title,
      :content,
      :category
    )

  end

end
