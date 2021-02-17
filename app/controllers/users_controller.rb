class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new_user_session
  end

  def create_user_session
    @user = User.find_by(name: params[:name])
    if @user.nil?
      render 'new_user_session'
    else
      session[:current_user_id] = @user.id
      redirect_to @user
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name)
  end
end
