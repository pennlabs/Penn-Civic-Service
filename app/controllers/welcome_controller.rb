class WelcomeController < ApplicationController
  def index
    render :index
  end

  def about
    render :about
  end

  def signup
    @fn = params[:first_name]
    @ln = params[:last_name]
    @user = params[:username]
    @pass = params[:pass]
    render :template => "users/new"
  end

end
