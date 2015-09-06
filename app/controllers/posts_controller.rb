class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def index
    @post = Post.all
  end

end
