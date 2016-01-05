class Api::PostsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    posts = Post.all

    render json: posts, status: 200
  end

  def show
    post = Post.find(params[:id])

    render json: post, status: 200
  end

  def create
    post = Post.new(post_params)

    if post.save
      render json: post, status: 201
    else
      render json: post.errors.messages, status: 403
    end
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :title, :body)
  end
end
