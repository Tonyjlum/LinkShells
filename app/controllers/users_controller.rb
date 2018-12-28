class UsersController < ApplicationController
  def index
    @events = Event.index_events
  end

  def login
    @user = User.find_by email: params[:email], password: params[:password]
    if @user.nil?
      @error = "Please check your Email and Password and Try again"
      redirect_to :root
    else
      session[:user_id] = @user.id
      redirect_to @user
    end
  end

  def show
    @user = User.find(params[:id])
    if @user.nil?
      redirect_to :root
    else
      @hostings = @user.events
      @game_list = @user.games_by_name
      @events = @user.confirms
    end
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

  private
  def user_params
    params.require(:user).permit(:email, :password, :age, :username, :profile_img)
  end

end
