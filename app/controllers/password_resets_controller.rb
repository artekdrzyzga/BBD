class PasswordResetsController < ApplicationController

  
  def new
    @setting =Setting.first
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user
      @user.deliver_password_reset_instructions!
      flash[:success] = "Instructions to reset your password have been emailed to you."
      redirect_to root_path
    else
      flash[:warning] = "No user was found with that email address"
      render :new
    end
  end

  def edit
    @setting =Setting.first
    @user = User.find_by(perishable_token: params[:id])
  end

  def update
    if params[:password] != params[:password_confirmation]
      flash[:error] = "Password and password confirmation don't match."
      render :edit
    else
      @user = User.find_by(perishable_token: params[:id])
      if @user.present?
        if @user.update_attributes(:password => params[:password], :password_confirmation => params[:password_confirmation])
          flash[:success] = "Password successfully updated!"
          redirect_to root_path
        else
          render :edit
        end
      else
        flash[:error] = "Wrong auth key. check your email"
        render :edit
      end
    end
  end



  private

  def password_reset_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end