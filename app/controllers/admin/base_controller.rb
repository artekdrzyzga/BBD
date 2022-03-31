class Admin::BaseController < ApplicationController 
  layout 'admin'
  before_action :authencitate
    
    def authencitate
     if current_user
       if current_user.admin == true
       else 
         redirect_to root_path
       end
     else 
       redirect_to root_path
     end  
    end
    
end
   