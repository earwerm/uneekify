class SessionController < ApplicationController
  def new
    @user = :username
  end

  def create
      user = User.where(:name => params[:username]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(search_path)
    else
      flash[:notice] = "Incorrect login. Please try again."
      redirect_to(root_path)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end
end