class ApplicationController < ActionController::Base
    helper_method :current_cart

    def current_cart
        if session[:order_id]
          Order.find(session[:order_id])
        else
          Order.new
        end
    end
      
      def current_cart_or_create
        c = current_cart
        if c.new_record?
          c.shipping_type = ShippingType.first
          c.user_id = 1
          c.save
          session[:order_id] = c.id
        end
        c
      end

      private

      def current_user_session
        return @current_user_session if defined?(@current_user_session)
        @current_user_session = UserSession.find
      end
      
      def current_user
        return @current_user if defined?(@current_user)
        @current_user = current_user_session && current_user_session.user
      end
      
      helper_method :current_user_session, :current_user

    
       
     



end

