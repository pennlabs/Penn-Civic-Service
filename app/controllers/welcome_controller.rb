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
    @username = params[:username]
    @pass = params[:pass]
    redirect_to url_for(controller: 'users', :action => :new, :fn => "#{@fn}", :ln => "#{@ln}", :user => "#{@username}", :pass => "#{@pass}")
  end

end
