class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    u = User.find_by_username(params['username'])
    if u && u.authenticate(params['password'])
     session['username'] = params['username']
    redirect_to '/home'
 else
   redirect_to '/sessions/new'
  end
  end
  
  def destroy
    reset_session
    redirect_to '/sessions/new'
  end
end 