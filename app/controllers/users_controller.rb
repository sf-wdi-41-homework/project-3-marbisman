class UsersController < ApplicationController
  def index
      @users = User.all
      @user = User.new
    end

  # def spotify
  #     @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
  #     hash = @spotify_user.to_hash
  #     puts hash
  #     puts @spotify_user.display_name
  #     render 'show'
  #   end

  def create
    if User.find_by({:email => user_params[:email]}) != nil
    flash[:error] = "User name already exists. Please try again"
    redirect_to root_path
  else
    @user = User.create(user_params)
    flash[:success] = "Welcome, #{@user.user_name}!"
    login(@user)
    redirect_to @user
  end
  end

  def show
    @user = User.find_by_id(params[:id])
      if (current_user != @user)
        flash[:error] = 'Stop Hacking!'
        redirect_to '/'
      end
  end

  def failure
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :password)
  end

end
