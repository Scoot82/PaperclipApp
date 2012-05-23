class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.create(params[:user])
    redirect_to users_url
  end
  
  def show
  end
  
  def index
    @users = User.all
  end

end