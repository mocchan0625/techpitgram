class PostsController < ApplicationController
  def index
    @posts = Post.all.limit(10).includes(:photos)
    @post = Post.new
  end
end
