class SessionsController < ApplicationController

def new
  @hide_nav_bar = true
  @video = ["http://www.youtube.com/embed/Pikd-9qqQ1c", "http://www.youtube.com/embed/TwUcgjm4baA", "http://www.youtube.com/embed/q-hdrSTxeas", "http://www.youtube.com/embed/3VVFhkcYBl0", "http://www.youtube.com/embed/5MhmGyZ7KF0", "http://www.youtube.com/embed/2XmeA5VmhX4", "http://www.youtube.com/embed/RvKE5zDshS4", "http://www.youtube.com/embed/GFsqtgjVw_4"]
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
