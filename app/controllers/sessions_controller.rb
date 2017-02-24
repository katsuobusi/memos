class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(id: params[:user_id])

    if user
      reset_session
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Login successed'
    else
      redirect_to root_path, alert: 'Login failed'
    end
  end

  def destroy
    reset_session
    redirect_to new_session_path
    # redirect_to params[:return_to]
  end

  def navigate_login?
    false
  end
end
