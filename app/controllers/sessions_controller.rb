class SessionsController < ApplicationController

  def new
  end
  
  def create
    u = Student.find_by_username(params['username'])
   if u && u.authenticate(params['password'])
     session['username'] = params['username']
     redirect_to "/home", :message => "signed in"
   else
     redirect_to "/", :message => "failed to sign in"
   end
  end
  
  def destroy
    reset_session
    redirect_to '/home', :message => "Signed Out"
  end

end