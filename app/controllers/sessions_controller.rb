class SessionsController < ApplicationController
  def create
    user = User.omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to "/sessions/new"
  end
  def new
  	@user= User.first
  end

  def destroy
    session[:user_id] = nil
  end
end
