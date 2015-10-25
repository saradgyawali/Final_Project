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
  end



  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end


