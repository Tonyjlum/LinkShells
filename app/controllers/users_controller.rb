class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #event list
    #game list
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to @user
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :age, :username, :profile_img)
  end

end
