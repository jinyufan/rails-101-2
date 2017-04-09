class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts
  end

  def edit
    @posts = current_user.posts
    @post = Post.find(params[:id])
  end

end
