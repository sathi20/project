class UsersController < ApplicationController
  def create
    User.create!(params[:user])
    redirect_to users_path
  end
  def new
    @users=User.new
  end
  def show
    @user=User.find(params[:id])
  end
  
  def index
    @users=User.all
  end
  def edit
    @users=User.find(params[:id])
  end
  def update
    @user= User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to users_path
  end
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end
end
