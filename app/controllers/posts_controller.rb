class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end


  def create
    post = Post.create(content: oarams[:content])
    render json:{ post: post }
  end
end
