class UsersController < ApplicationController
  before_action :authenticate_user!, :admin_only

  def index
    @pagy, @users = pagy(User.where("users.id > 0").order(role: :desc))
  end

  def show
    @user = User.find(params[:id])
    unless current_user.admin?
      unless @user == current_user
        redirect_to root_path, :alert => "You are not authorized to access this page."
      end
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User was successfully updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User was successfully deleted."
  end

  def secure_params
    params.require(:user).permit(:email, :password, :role)
  end

end
