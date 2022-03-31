class UsersController < ApplicationController
  def new
    @user = User.new
    @setting =Setting.first
  end

  def create
    @setting =Setting.first
    @user = User.new(users_params)
    if @user.save
      flash[:success] = "Account registered!"
      
      if session[:order_id].present? && session[:order_id].kind_of?(Integer)
        redirect_to edit_cart_path
      else
        redirect_to root_path
      end
      #redirect_to root_path
    else
      render :new
    end
  end

  private

  def users_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation,
      :first_name,
      :last_name,
      :company_name,
      :city,
      :country,
      :phone,
      :zip_code,
      :street
    )
  end


end


 