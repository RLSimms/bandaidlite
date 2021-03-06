class SessionsController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.find_by_name(params[:name])

  if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to users_url, notice: 'Signed in successfully'
  else
      render 'new', notice: 'Incorrect Login Info. Try again!'
  end
end

def destroy
  reset_session
  redirect_to root_url, notice: 'Signed out successfully'
end


end



