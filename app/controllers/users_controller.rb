class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(user_params)
    user.save
      session[:user_id] = user.id
      redirect_to profile_path
  end

  def show
  end

  def edit
    @user = User.find(current_user)
    render :edit
  end

  def update 
    user = User.find(params[:id])
    if current_user
      user.update_attributes(user_params)
      redirect_to profile_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user
      @user.destroy
      session[:user_id] = nil
      redirect_to root_path
    end
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :age, :sex, :weight, :height)
    end

end


