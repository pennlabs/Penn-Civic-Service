require 'bcrypt'

class SessionsController < ApplicationController
  include BCrypt

  def new
    render :new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.confirmed && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/login', flash: { error: 'Incorrect username and/or password!' }
    end
  end

  def destroy
    reset_session
    redirect_to '/', notice: 'Session was successfully destroyed.'
  end

  def confirm
    @user = User.find_by(confirm_token: params[:c])
    @user.update_attribute :confirmed, true if user
    redirect_to '/login'
  end
end
