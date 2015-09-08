class SessionsController < ApplicationController


  def new

  end

  def create
    set_user
    if @user
      @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def set_user
    @user = User.find_by(email: params[:user][:email])
  end
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
