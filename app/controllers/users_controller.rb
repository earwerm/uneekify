class UsersController < ApplicationController
  before_filter :check_if_logged_in, :except => [:new, :create]
  before_filter :check_if_admin, :only => [:index, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(search_path)
    else
      render :new
    end
  end

  def edit
    @user = @auth
    render :new
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to(users_path)
  end

  private
  def check_if_logged_in
    redirect_to(root_path) if @auth.nil?
  end

  def check_if_admin
    redirect_to(root_path) if @auth.nil? || !@auth.is_admin
  end
end
