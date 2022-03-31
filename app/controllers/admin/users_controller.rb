class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
  end
  def edit
  end
  def update
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end









end
