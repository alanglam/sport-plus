class UsersController < ApplicationController

  def profile
    @user = current_user
  end

  def show
    @user
  end

  def update
    @user = current_user
    @user.update(user_params)
    @user.save!
    redirect_to dashboard_path
  end

  def destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
