class UserController < ApplicationController
    def login
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "Admin Login sucessfull!!"
        redirect_to :controller => :items
    end 
    
    def logout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "You have been successfully logged out!!"
        redirect_to :controller => :items
    end    
  def upgrade_admin
        @user.update_attribute(:adminrole, true)
        redirect_to :action => :admin_users
  end
    
  def downgrade_admin
       @user.update_attribute(:adminrole, false)
         redirect_to :action => :admin_users
  end    
    

end
