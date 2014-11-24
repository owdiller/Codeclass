class SessionsController < ApplicationController

  def new
  end
  
  def create
    u = Student.find_by_username(params['username'])
   if u && u.authenticate(params['password'])
     session['username'] = params['username']
     redirect_to "/home", :notice => "signed in"
   else
     redirect_to "/", :notice => "failed to sign in"
   end
  end
  
  def destroy
    reset_session
    redirect_to '/home', :notice => "Signed Out"
  end

end