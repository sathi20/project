class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    
    
    if @user.save!
      # Tell the UserMailer to send a welcome Email after save
      UserMailer.welcome_email(@user).deliver
      
      redirect_to(@user, :notice => 'User was successfully created.')
      
      
      
    else
      redirect_to users_path
    end
  end
  
  def new
    @users=User.new
  end
  def show
    @user=User.find(params[:id])
    @posts=@user.posts
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
