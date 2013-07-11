class SessionController < ApplicationController
  def new
  end

  def create
      user = User.where(:name => params[:username]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(root_path)
    else
      flash[:notice] = "Incorrect login. Please try again."
      redirect_to(login_path)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end

  def search
    binding.pry
    url = "http://developer.echonest.com/api/v4/song/search?api_key=9JJUAQS0ZBF2SK5VU&style=#{@genre}&min_danceability=#{@tempo}&min_tempo=#{@min_bpm}&results=#{@results_number}"
    #redirect_to(root_path)
  end
end