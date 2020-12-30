class UserSessionsController < ApplicationController
    def new
      @user_session = UserSession.new
      @setting =Setting.last
    end
  
    def create
      
      @user_session = UserSession.new(user_session_params.to_h)
#      byebug

      if @user_session.save
        flash[:success] = "Welcome back!"
        if session[:order_id].present? && session[:order_id].kind_of?(Integer)
          redirect_to edit_cart_path
        else
          redirect_to root_path
        end
        #redirect_back(fallback_location: root_path)
      else
        render :new
      end


    end
  
    def destroy
      current_user_session.destroy
      flash[:success] = "Goodbye!"
      redirect_to root_path
    end
  
    private
  
    def user_session_params
      params.require(:user_session).permit(:email, :password, :remember_me)
    end
  end