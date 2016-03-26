require 'bcrypt'

class SessionsController < ApplicationController
  include BCrypt

  def new
    render :new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def destroy
    reset_session
    redirect_to '/', notice: 'Session was successfully destroyed.'
  end
end
