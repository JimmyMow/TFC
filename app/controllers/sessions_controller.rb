class SessionsController < ApplicationController

def new
  @hide_nav_bar = true
end

def create
  u = User.find_by_username(params[:username])

  if u.present? && u.authenticate(params[:password])
    session[:user_id] = u.id
    redirect_to locker_room_url(u), notice: "Signed in successfully"
  else
    redirect_to new_session_url, notice: "Please try again"
  end
end
def destroy
  reset_session
  redirect_to new_session_url, :notice => "Sign out successful."
end

end
