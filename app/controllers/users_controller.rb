class UsersController < ApplicationController
  def index
    
  end

  def new
    @user = current_user
  end

  def show
    user = User.find(params[:id])
    @email = user.email
    @items = user.items
    @user = current_user
  end
end
