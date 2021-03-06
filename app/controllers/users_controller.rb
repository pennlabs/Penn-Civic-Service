class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    if current_user.username != @user.username
      redirect_to '/'
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params.merge(confirmed: false))
    respond_to do |format|
      # TODO: Make email validation a validator on the model, not controller
      if @user.email.index('upenn.edu') && @user.save
        UserMailer.registration_confirmation(@user).deliver
        format.html { redirect_to '/login?q=1', notice: '' }
        format.json { render :show, status: :created, location: @user }
      else
        unless @user.email.index('upenn.edu')
          @user.errors[:base] << 'Must have a upenn.edu email'
        end
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render template: 'users/show' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :password,
                                   :password_confirmation, :org_name, :org_url,
                                   :org_address, :city, :state, :zipcode,
                                   :firstname, :lastname, :confirmed)
    end
end
