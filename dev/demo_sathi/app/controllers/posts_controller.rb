class PostsController < ApplicationController
  def create
    @user=User.find(params[:user_id])
    @post= @user.posts.create!(params[:post])
    redirect_to user_path(@user)
  end
  def new
    @user=User.find(params[:user_id])
    @post=@user.posts.new
  end
  def show
    @user=User.find(params[:user_id])
    @posts=@user.posts.find(params[:id])
  end
  def index
    @posts=Post.all
  end
  def destroy
    @user = User.find(params[:user_id])
    @posts= @user.posts.find(params[:id]).destroy
    redirect_to users_path
  end
  
end
