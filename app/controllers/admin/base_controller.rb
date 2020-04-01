class Admin::BaseController < ApplicationController 
  layout 'admin'
  before_action :authencitate
    
    def authencitate
    end
end
   